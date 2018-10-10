$cred = Get-Credential -UserName "mcowen" -Message "VM Admin cred"


.\RampTest.ps1 -cred $cred -totalVmCount 1 -pauseBetweenVmCreateInSeconds 1 -location 'mas2' -vmsize 'Standard_F4s_v2' `
    -storageUrlDomain 'blob.mas2.mtc-tvp.com' -testParams '-c250M -t2 -o20 -d30 -w50 -Rxml' -dataDiskSizeGb 128 `
     -resourceGroupNamePrefix 'STB-' -password $cred.Password 

.\ParallelRamp.ps1 -pauseBetweenRampInSeconds 60 -root . -cred $cred -accountKey ($accountKey + '')


