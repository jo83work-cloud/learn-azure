#!/bin/bash

## Create RG 
az group create --name learnAzureRG --location westeurope


## Spin Jumphost VM
az vm create \
  --resource-group learnAzureRG \
  --name jumphostVM \
  --image Ubuntu2204 \
  --size Standard_D2s_v6 \
  --location westeurope \
  --admin-username azureuser \
  --generate-ssh-keys \
  --tags os=linux env=dev role=jump owner=joseph
    #### Output
    # The default value of '--size' will be changed to 'Standard_D2s_v5' from 'Standard_DS1_v2' in a future release.
    # Selecting "uksouth" may reduce your costs. The region you've selected may cost more for the same services. You can disable this message in the future with the command "az config set core.display_region_identified=false". Learn more at https://go.microsoft.com/fwlink/?linkid=222571 
    
    # {
    #   "fqdns": "",
    #   "id": "/subscriptions/399212b1-0d3f-42c1-9d5e-f6a5542a48b3/resourceGroups/learnAzureRG/providers/Microsoft.Compute/virtualMachines/jumphostVM",
    #   "location": "westeurope",
    #   "macAddress": "7C-ED-8D-0C-5F-37",
    #   "powerState": "VM running",
    #   "privateIpAddress": "10.0.0.4",
    #   "publicIpAddress": "172.201.67.186",
    #   "resourceGroup": "learnAzureRG"
    # }
    # joseph [ ~ ]$ 



