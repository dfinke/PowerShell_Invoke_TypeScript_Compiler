Invoke-TSC is a PowerShell function that lets you call the Microsoft TypeScript compiler (tsc.exe).

TypeScript was created by Microsoft

TypeScript is a language for application-scale JavaScript. TypeScript adds optional types, classes, and modules to JavaScript. 
TypeScript supports tools for large-scale JavaScript applications for any browser, for any host, on any OS. 
TypeScript compiles to readable, standards-based JavaScript.

Get it here http://typescript.codeplex.com/

##

You need to install TypeScript and then dot source the InvokeTSC.ps1 file.

. .\InvokeTSC.ps1

Or, copy the contents of the InvokeTSC.ps1 to your PowerShell profile.

## Examples

Here is how you can compile a TypeScript file to JavaScript

*Invoke-TSC .\helloworld.ts*

This will compile and then execute the resulting JavaScript

*Invoke-TSC .\helloworld.ts -Execute*

Finally, you can compile and execute all the TypeScript files in a directory

*dir *.ts | Invoke-TSC -Execute*