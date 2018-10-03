$accountKey = Read-Host "Key"
$cred = Get-Credential -UserName "mcowen" -Message "VM Admin cred"


.\RampTest.ps1 -cred $cred `
            -totalVmCount 1 `
            -storageKey ($accountKey + '') -resourceGroupNamePrefix 'STD-'
            #-deployArmTemplate

