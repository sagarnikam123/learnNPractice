/*

	Spaghetti Monsters

	Spaghetti Monsters have stolen The Chef’s golden spoon! The Chef has a map, on which are marked: his location,
	the location of the golden spoon, and the locations of the spaghetti monsters. The map is in fact rectangular,
	consisting of square fields. Each field on the map, except for those adjacent to the boundary, is adjacent
	to 8 other fields -- fields which share a side or corner are assumed to be at a distance of 1 from each other,
	and it is possible to move between them directly. The Chef is a bit scared of spaghetti monsters and would prefer
	not to approach them too closely... Help him compute the minimum distance up to which he must approach some
	spaghetti monster, so as to find the golden spoon.

	Input
	The first line of input contains two numbers 1<=n,m<=1000, where n denotes the height of the map, and m its width.
	The map is given in the next n lines, each of which consists of m characters:
	The unique field represented by the character '@' is the location of The Chef.
	The unique field represented by the character '$' is the location of the golden spoon.
	A field represented by the character 'D' is the location of a spaghetti monsters.
	All the remaining fields are represented by the character '.' and denote empty positions.

	Output
	The output should contain exactly one number, equal to the minimum distance, at which The Chef must find himself
	from one of the spaghetti monsters in order to reach the golden spoon.
***********************************************************************************************************************
Example 1
Input:
7 5
....$
.....
.....
D...D
.....
.....
@....

Output:
2

Example 2
Input:
7 5
....$
.....
.....
DDDDD
.....
.....
@....

Output:
0

**********************************************************************************************************************/
package medium.unsolved;

public class SpaghettiMonsters {

	public static void main(String[] args) {

	}

}
