#
# Run.ps1
#
.\RampTest.ps1 -cred (Get-Credential -UserName "mcowen" -Message "VM Admin cred") `
            -totalVmCount 1 `
            -storageKey (Read-Host -Prompt "Account key" -AsSecureString)
            #-deployArmTemplate

