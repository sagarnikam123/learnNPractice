# Naming a vector

#################################################################################################################
#
#	As a data analyst, it is important to have a clear view on the data that you are using.
#	Understanding what each element refers to is therefore essential.
#
#	In the previous exercise, we created a vector with your winnings over the week. Each vector element refers
#	to a day of the week but it is hard to tell which element belongs to which day.
#	It would be nice if you could show that in the vector itself.
#
#	You can give a name to the elements of a vector with the names() function. Have a look at this example:
#
#	some_vector <- c("Johnny", "Poker Player")
#	names(some_vector) <- c("Name", "Profession")
#
#	This code first creates a vector some_vector and then gives the two elements a name.
#	The first element is assigned the name Name, while the second element is labeled Profession.
#	Printing the contents to the console yields following output:
#
#	some_vector
#
#################################################################################################################

# Poker winnings from Monday to Friday
poker_vector <- c(140, -50, 20, -120, 240)

# Roulette winnings from Monday to Friday
roulette_vector <- c(-24, -50, 100, -350, 10)

# Add your code here
names(poker_vector) <-  c("Monday","Tuesday","Wednesday","Thursday","Friday")
names(roulette_vector) <- c("Monday","Tuesday","Wednesday","Thursday","Friday")
