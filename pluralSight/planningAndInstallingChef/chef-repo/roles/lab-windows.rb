name "lab-windows"
description "Pluralsight lab role for Windows servers"
run_list "recipe[lab-windows]"
override_attributes({
  "starter_name" => "ChefLinux Baba",
})
