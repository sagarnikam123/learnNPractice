name "lab-linux"
description "Pluralsight lab role for Linux servers"
run_list "recipe[lab-linux::apache]"
override_attributes({
  "starter_name" => "ChefLinux Baba",
})
