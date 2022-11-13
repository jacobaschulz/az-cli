


# enables/disables soft-delete on keyvault
az resource update --id /subscriptions/xxxxxx-xxxx-xxxx-xxxx-xxxxxxxxxxxx/resourceGroups/<resourceGroupName>/providers/Microsoft.KeyVault/vaults/<keyVaultName> --set properties.enablePurgeProtection=true properties.enableSoftDelete=true
