$cred = Get-Credential -UserName "mcowen" -Message "VM Admin cred"


.\RampTest.ps1 -cred $cred -totalVmCount 1 -pauseBetweenVmCreateInSeconds 1 -location 'mas2' -vmsize 'Standard_F4s_v2' `
    -storageUrlDomain 'blob.mas2.mtc-tvp.com' -testParams '-c200M -t2 -o20 -d30 -w50 -Rxml' -dataDiskSizeGb 128 `
     -resourceGroupNamePrefix 'STA-' -password $cred.Password #-initialise

.\ParallelRamp.ps1 -pauseBetweenRampInSeconds 60 -root . -cred $cred -accountKey ($accountKey + '')


