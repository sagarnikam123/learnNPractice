# Median Pokemon

#######################################################################################################################
#
#	The campus has come alive with all these pokemons around (Previously,this was only boring minds running around
#	for classes).Somebody just told Ash how big of a place this is,enough for him to realise that covering the whole
#	of it is not the best idea to go with.
#
#	Using the list he just encrypted,he can now decide a block to begin his quest to be a Pokemon Master. He ranks the
#	pokemons according to their CP(with smaller rank meaning better pokemon CP).Being excellent at catching pokemons
#	and sucking that much at this stuff,he turns to you to decide a block for him.
#
#	The campus is divided into a grid of N rows and M columns,with each element of this grid containing a single
#	Pokemon with unique rank between 1 and 109. Ash can only cover a block of size X * Y .
#
#	Your job is to identify a identify a rectangular block of dimension X * Y(Both odd,X along rows,Y along columns)
#	such that it has the best (numerically smallest) median rank (the median of the ranks of pokemon in that block).
#
#	Input:
#
#	First line of input contains the four integers M N X Y.
#
#	The next N lines each contain M integers, denoting an array R where R[a][b] is the rank for a pokemon
#	at (a+1)th row and (b+1)th column.
#
#	Output:
#
#	A single integer, the best (numerically smallest) possible median rank of an X by Y block.
#
#	Constraints:
#
#	1 <= M <= 3000.
#
#	1 <= N <= 3000.
#
#	1 <= X <= M and X is odd.
#
#	1 <= Y <= N and Y is odd.
#
#	1 <= R[a][b] <= 109 and it is unique.
#
#######################################################################################################################
#	Input
#
#	4 4 3 3
#	12 5 7 10
#	14 4 1 2
#	6 8 15 11
#	16 9 13 3
#######################################################################################################################
#	Output
#
#	7
#######################################################################################################################
