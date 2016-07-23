# Resource providers & resource namespaces with types
Get-AzureRmResourceProvider | `
  Select-Object ProviderNamespace, ResourceTypes | `
  Sort-Object ProviderNamespace

# With specific provider namespace
Get-AzureRmResourceProvider -ProviderNamespace Microsoft.Compute | `
    Select-Object ResourceTypes, Locations | `
    Sort-Object ResourceTypes

# Using ARM REST APIs
https://management.azure.com/subscriptions/{subscription-id}/providers/{provider-name}?&api-version={api-version}

#((Get-AzureRmResourceProvider -ProviderNamespace Microsoft.Compute) ResourceTypes | Where-Object
{$_.ResourceTypeNmae -eq 'virtualMachines'}).ApiVersions
