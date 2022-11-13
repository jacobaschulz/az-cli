#!/bin/bash

# Enables soft-delete for the below
for kvs in $(az resource list --resource-type 'Microsoft.Keyvault/vaults' --query "[?properties.enableSoftDelete == false].id" -o tsv); do
    echo "updating setting for ${kvs}"
    az resource update --ids $kvs --set properties.enableSoftDelete=true;
done