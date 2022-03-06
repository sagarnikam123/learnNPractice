# The chef generate command

# chef generate
# generate a new Chef Infra repository
chef generate repo learnchef-repo

# create a cookbook
cd learnchef-repo
chef generate cookbook cookbooks/learnchef
cd cookbooks/learnchef

# chef generate help
chef generate --help
chef generate repo --help
###############################################################################
# The knife command

# knife bootstrap - initiate a process that installs Chef Infra Client on the target system
# knife node - update the policies on any one or more of your managed nodes
# knife ssh - connect remotely to a system
# knife winrm - connect remotely to a system
###############################################################################
