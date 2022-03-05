# Pokeluck

#######################################################################################################################
#
#	Mewtwo is one of the rarest and most famous pokemons in thw pokemon world. If any pokemon gets to fight with
#	Mewtwo, he is considered to be "1-lucky". A pokemon that gets to fight with the pokemon who has fought with
#	Mewtwo is considered to be "2-lucky", and so on.
#
#	The Luckiness is defined on the basis of above mentioned rule. ( 1-Lucky -> Luckiness = 1).
#
#	Note1: Consider luckiness of Mewtwo to be 0 .
#
#	Note2: No one has negative luckiness.
#
#	Note3: If a pokemon A is not Mewtwo himself, and has battled with someone with luckiness X, and has not battled
#	with anyone with Luckiness smaller than X, then A has luckiness X+1 .
#
#	Note4: It is ensured that every pokemon has finite positive luckiness.
#
#	Input:
#
#	The first line has two numbers: A,number of pokemons being considered and B, number of pokemon battles
#	that have happened.
#
#	Then B lines follow, each containing two distinct pokemons, denoting that the two pokemons have battled.
#	Pokemons are represented by numbers between 1 and A.
#
#	Mewtwo is represented by 1.
#
#	Output Format:
#
#	Output A-1 lines , ith line containing the luckiness of ith pokemon. (2 <= i <= A)
#
#	Constraints:
#
#	A <= 1000
#
#	B <= (A(A-1))/2 ]
#
#######################################################################################################################
#	Input
#
#	3 2
#	1 2
#	2 3
#######################################################################################################################
#	Output
#
#	1
#	2
#######################################################################################################################
