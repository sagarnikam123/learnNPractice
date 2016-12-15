# 4_knife Search

# finding rhel platform
knife search 'platform_family:rhel'
# finding 'apache' recipe
# node is by default (optional)
knife search node 'recipes:apache'
# which has websites
knife search 'recipes:apache\:\:websites'
knife search 'recipes:apache\:\:websites1'
knife search 'recipes:apache\:\:websites*'

knife search node 'platforr?:centos'
# pull all nodes
knife search node 'platforr?:centos' -a hostname

# pull info of all nodes
knife search '*:*'
knife search '*:*' -a ipaddress
knife search '*:*' -a run_list

# role
knife search role 'role:web' -a run_list
# search all nodes for recipes
knife search '*:*' -a recipes
