$accountKey = Read-Host "Key"
$cred = Get-Credential -UserName "mcowen" -Message "VM Admin cred"


.\RampTest.ps1 -cred $cred `
            -totalVmCount 10 -pauseBetweenVmCreateInSeconds 5 `
            -storageKey ($accountKey + '') -resourceGroupNamePrefix 'STB-'
            #-deployArmTemplate

.\ParallelRamp.ps1 -pauseBetweenRampInSeconds 60 -root . -cred $cred -accountKey ($accountKey + '')