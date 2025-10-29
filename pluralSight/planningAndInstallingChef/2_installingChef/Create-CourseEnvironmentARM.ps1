function New-RandomString {
    $String = $null
    $r = New-Object System.Random
    1..6 | % { $String += [char]$r.next(97,122) }
    $string
}

### Define variables

$SubscriptionName = 'Grav-640-Eng-ECO(Converted to EA)'
$Location = 'West US' ### Use "Get-AzureLocation | Where-Object Name -eq 'ResourceGroup' | Format-Table Name, LocationsString -Wrap" in ARM mode to find locations which support Resource Groups
$GroupName = 'chef-lab'
$DeploymentName = 'chef-server-deployment'
$StorageName = 'chefstorage' + (New-RandomString)
$PublicDNSName = 'chef-lab-' + (New-RandomString)
$AdminUsername = 'chef'

### Connect to Azure account

if (Get-AzureSubscription){
    Get-AzureSubscription -SubscriptionName $SubscriptionName | Select-AzureSubscription -Verbose
    }
    else {
    Add-AzureAccount
    Get-AzureSubscription -SubscriptionName $SubscriptionName | Select-AzureSubscription -Verbose
    }

Switch-AzureMode AzureResourceManager -Verbose

### Create Resource Group ###

if((Test-AzureResourceGroup -ResourceGroupName $GroupName) -eq $false){
    New-AzureResourceGroup -Name $GroupName -Location $Location -Verbose
    $ResourceGroup = Get-AzureResourceGroup -Name $GroupName
    }
    else {$ResourceGroup = Get-AzureResourceGroup -Name $GroupName}

$parameters = @{
    'newStorageAccountName'="$StorageName";
    'adminUsername'="$AdminUsername";
    'dnsNameForPublicIP'="$PublicDNSName"
    }

New-AzureResourceGroupDeployment `
    -Name $DeploymentName `
    -ResourceGroupName $ResourceGroup.ResourceGroupName `
    -TemplateFile azuredeploy.json `
    -TemplateParameterObject $parameters `
    -Verbose
