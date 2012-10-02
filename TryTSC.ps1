cls

. .\InvokeTSC.ps1

#Invoke-TSC .\hello.ts
#Invoke-TSC .\HelloWorld.ts -Execute

dir *.ts | Invoke-TSC -Execute