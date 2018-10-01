$accountKey = (Read-Host -Prompt "Account key" -AsSecureString)
$cred = (Get-Credential -UserName "mcowen" -Message "VM Admin cred")


.\RampTest.ps1 -cred $cred `
            -totalVmCount 1 `
            -storageKey $accountKey
            #-deployArmTemplate

