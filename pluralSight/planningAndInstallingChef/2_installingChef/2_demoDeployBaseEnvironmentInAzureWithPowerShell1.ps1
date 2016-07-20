# install and configure Azure PowerShell (from WebPI)
# https://azure.microsoft.com/en-in/documentation/articles/powershell-install-configure/
################################################################################

# Installing Azure PowerShell from the PowerShell Gallery
# Install the Azure Resource Manager modules from the PowerShell Gallery
# open powershell in "Run as Administrator" mode
Install-Module AzureRM

# Install the Azure Service Management module from the PowerShell Gallery
Install-Module Azure

################################################################################
# To make sure the Azure PowerShell module is available after you install
Get-Module –ListAvailable

# To login to Azure Resource Manager
Login-AzureRmAccount

# You can also use a specific Tenant if you would like a faster login experience
# Login-AzureRmAccount -TenantId xxxx

# To view all subscriptions for your account
Get-AzureRmSubscription

# To select a default subscription for your current session
Get-AzureRmSubscription –SubscriptionName “your sub” | Select-AzureRmSubscription

# View your current Azure PowerShell session context
# This session state is only applicable to the current session and will not affect other sessions
Get-AzureRmContext

# To select the default storage context for your current session
Set-AzureRmCurrentStorageAccount –ResourceGroupName “your resource group” –StorageAccountName “your storage account name”

# View your current Azure PowerShell session context
# Note: the CurrentStorageAccount is now set in your session context
Get-AzureRmContext

# To list all of the blobs in all of your containers in all of your accounts
Get-AzureRmStorageAccount | Get-AzureStorageContainer | Get-AzureStorageBlob
