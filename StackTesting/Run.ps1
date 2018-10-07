$cred = Get-Credential -UserName "mcowen" -Message "VM Admin cred"


.\RampTest.ps1 -cred $cred -totalVmCount 5 -pauseBetweenVmCreateInSeconds 1 `
            -resourceGroupNamePrefix 'STA-' -password $cred.Password -initialise -dontDeleteResourceGroupOnComplete

.\ParallelRamp.ps1 -pauseBetweenRampInSeconds 60 -root . -cred $cred -accountKey ($accountKey + '')