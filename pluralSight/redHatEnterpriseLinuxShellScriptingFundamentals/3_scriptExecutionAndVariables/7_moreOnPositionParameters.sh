# 7_More on Position Parameters

# $# -> total no of args (number)
# $@ -> all args as a list
# $* -> all args as a single value

echo "$# arguments were passed to the script. They were $@"

echo -e "\n The first argument you entered was $1, the second $2, and the thrid $3 \n"

# shifting by default
shift
echo "Shifting...by default"
sleep 1
echo -e "\n The first argument you entered was $1, the second $2, and the thrid $3 \n"

# shifting by 2 positions
shift 2
echo "Shifting by 2 positions..."
sleep 1
echo -e "\n The first argument you entered was $1, the second $2, and the thrid $3 \n"

exit
