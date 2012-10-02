function Invoke-TSC {
    <#
        .Synopsis
        Invokes the TypeScript compiler

        .Example
        Invoke-TSC .\helloworld.ts

        .Example
        Invoke-TSC .\helloworld.ts -Exe

        .Example
        dir *.ts | Invoke-TSC -Exe
    #>
    param(
        [Parameter(
            ValueFromPipeline=$false,
            ValueFromPipelineByPropertyName
        )]
        [Alias("PSPath")]
        $LiteralPath,
        [Switch]$Execute
    )

    Begin {

        $tscFound = ( (Get-Command tsc.exe -ErrorAction SilentlyContinue ) -ne $null)

        $tsc = "tsc"
        if($Execute) {$executeFlag = "--exec" }
    }

    Process {

        if($tscFound) {
            if($LiteralPath -And (Test-Path $LiteralPath)) {
                $LiteralPath = (Resolve-Path $LiteralPath).ProviderPath
            }

            Write-Debug "$tsc $LiteralPath $executeFlag"
            & $tsc $LiteralPath $executeFlag
        } else {
        
            Write-Error "TypeScript compiler, tsc.exe, could not be found. Get it here http://typescript.codeplex.com/releases/view/95554"            
            Start "http://typescript.codeplex.com/releases/view/95554"
            return
        }
    }
}
