/**

 	Tautology

Write a program that checks if the given logical expression is a tautology.
The logical expression is a tautology if it is always true, regardless of logical value of its variables.

Input
On the first line there is the number of expressions to check (at most 35).
The expression is in a prefix notation, that means that operator precedes its arguments.
The following logical operators will be used:

C - and
D - or
I - implies
E - if, and only if
N - not

The variables will be lowercase letters (a-z). There will be no more than 16 different letters in the expression.
The length of the expression will not exceed 111 characters.

Output
For each expression write one word: YES if it is a tautology, NO in other case.
***********************************************************************************************************************
Example

Sample input:
7
IIpqDpNp
NCNpp
Iaz
NNNNNNNp
IIqrIIpqIpr
Ipp
Ezz


Sample output:
YES
YES
NO
NO
YES
YES
YES

**********************************************************************************************************************/

package medium.unsolved;

public class Tautology {

	public static void main(String[] args) {

	}

}
