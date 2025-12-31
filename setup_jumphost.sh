#!/bin/bash

## Create RG 
az group create --name learnAzureRG --location westeurope


## Spin Jumphost VM
az vm create \
  --resource-group learnAzureRG \
  --name jumphostVM \
  --image RedHat:RHEL:9-lvm:latest \
  --size Standard_D2s_v6 \
  --admin-username azureuser \
  --generate-ssh-keys



