# Pokedentity

#######################################################################################################################
#
#	Ash is trying to catch Pokémon in a very popular spot. There is too much noise all around and he can only here
#	some parts of the name of the Pokémon he is trying to catch. Help him decipher the names of the Pokémon.
#
#	Due to the noise, Ash has only been able to recover random triplets(see below) from the name,
#	in the order in which they appear.
#
#	Given a collection of random triplets heard, recover the original Pokémon's name.
#
#	A triplet here is defined as a sequence of three letters such that each letter occurs somewhere before the
#	next in the given name. "pic", "khu" are triplets for the Pokémon "pikachu".
#
#	As a simplification, you may assume that no letter occurs more than once in the Pokémon's name.
#
#	You can assume nothing about the triplets given to you other than that they are valid triplets and that
#	they contain sufficient information to deduce the original string. In particular, this means that the secret
#	string will never contain letters that do not occur in one of the triplets given to you.
#
#	Input:
#
#	First line of the each test case contains a single integer N denoting number of triplets.
#
#	Followed by N lines each containing 3 letters/numbers separated by spaces.
#
#	The following code may be used to obtain the triplets as the input is slightly complex:
#
#	  char ar[3][3];
#	  for (int i = 0; i < N; i++) {
#	    scanf("%c %c %c\n", &ar[i][0], &ar[i][1], &ar[i][2]);
#	  }
#	The above code will give you the triplets in a two dimensional array ar such that: * ar[0][0] is the 1st
#	character of first triplet, ar[0][1] is the 2nd character of the first triplet... * ar[1][0] is the 1st
#	character of second triplet and so on * In general ar[i][j] is the (j + 1)th character of (i + 1)th triplet
#
#	Output:
#
#	The Pokémon's name
#
#	Constraints: 1<=N<=1000
#	All letters in the name of the Pokémon are unique
#
#######################################################################################################################
#	Input
#
#	7
#	i v a
#	i v s
#	s u r
#	y s u
#	s a u
#	i v u
#	v y a
#######################################################################################################################
#	Output
#
#	ivysaur
#######################################################################################################################
