# 5_Manipulating Variables

name=$USER
shortname=$(cat /etc/passwd | grep "$name" | awk -F : '{print $5}' | cut -d '' -f1 )

echo -e "Hi $name\n"
echo -e "Is it Ok if I call you $shortname?\n"
