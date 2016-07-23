# Login to Azure Account
Login-AzureRmAccount

# Get azure subscription 
Get-AzureRmSubscription

# Get all azure resources 
Get-AzureRmResource

# GEt all Azure resource group
Get-AzureRmResourceGroup
Get-AzureRmResourceGroup | Select-Object ResourceGroupName

### Get ARM Provider Locations
((Get-AzureRmResourceProvider `
    -ProviderNamespace "$resourceProviderNamespace").ResourceTypes | `
    Where-Object {$_.ResourceTypeName -eq "$resourceTypeName"}).Locations | `
    Sort-Object

### Define Deployment Variables
$resourceGroupName = 'pluralsight-arm-simple-paas'
$resourceProviderNamespace = 'Microsoft.Web'
$resourceTypeName = 'sites'
$resourceGroupLocation = 'Central US'

$randomString = ([char[]]([char]'a'..[char]'z') + 0..9 | Sort-Object {Get-Random})[0..8] -join ''
$appNamePrefix = 'pluralsight'
$appServicePlanName = $appNamePrefix + $randomString
$webAppName = $appNamePrefix + $randomString

# Check 
$resourceGroupName
$webAppName

### Create ARM Resource Group
New-AzureRmResourceGroup `
    -Name $resourceGroupName `
    -Location $resourceGroupLocation `
    -Verbose -Force
# check 
Get-AzureRmResourceGroup | Select-Object ResourceGroupName

### Create App Service Plan
$appServicePlan = New-AzureRmAppServicePlan `
    -ResourceGroupName $resourceGroupName `
    -Location $resourceGroupLocation `
    -Name $appServicePlanName `
    -Tier Standard `
    -WorkerSize Small `
    -Verbose

#check 
$appServicePlan

### Create Web App
New-AzureRmWebApp `
    -ResourceGroupName $resourceGroupName `
    -Location $resourceGroupLocation `
    -AppServicePlan $appServicePlan.ServerFarmWithRichSkuName `
    -Name $webAppName `
    -Verbose

# Go to Azure portal & check the URL of WebApp, found in HostNames
# e.g. http://pluralsightpyhdl5nro.azurewebsites.net/    