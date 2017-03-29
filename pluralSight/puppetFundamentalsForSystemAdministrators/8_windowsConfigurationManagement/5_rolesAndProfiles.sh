# 5_Roles and Profiles

cd /etc/puppet/environments/production/modules/
sudo puppet module generate sagarnikam123-roles --environment production
sudo mv sagarnikam123-roles roles

sudo puppet module generate sagarnikam123-profiles --environment production
sudo mv sagarnikam123-profiles profiles

# profiles
cd profiles/manifests
sudo nano init.pp
class profiles {

}

class profiles::windows::mysql-workbench {

}

class profiles::windows::putty {

}

# roles
cd /etc/puppet/environments/production/modules/roles/manifests
sudo nano init.pp
class roles {

}

class roles::windows-admin {
  class { 'profiles::windows::mysql-workbench' : }
  class { 'profiles::windows::putty': }
}
