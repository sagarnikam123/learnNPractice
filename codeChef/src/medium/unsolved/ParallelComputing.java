/**

	Parallel Computing

	Chef needs a program to solve a simple task. The program will start with an array of integers X.
	After the execution it should hold values X[1] + X[2] + ... + X[i] at all positions 1 <= i <= N.
	However, he wants this done fast and efficiently. He needs your help to output a program
	which can be executed in parallel on N machines and will produce a correct result.
	Note that he needs a program for some fixed size of array 1 <= N <= 1000.

	A program consists of a series of synchronized steps. Instructions within one step are executed
	in parallel on multiple (at most N) machines which all have access to the shared memory where the array is located.
	You should not make any assumptions about the order in which these parallel instructions will be completed,
	but you can be sure that all instructions in the current step will be completed before any other instruction
	from the next step. There is only one type of instruction and it has the form "a+b=c".
	It reads the values X[a], X[b] and writes their sum in X[c].
	The program should contain at most 20 steps and the total number of instructions should not exceed 2000.

	Input
	Input contains a single positive integer N.

	Output
	Output the number of steps in your program. In the following lines describe these steps.
	First output the number of instructions which should be executed in parallel on this step followed
	by a list of instructions. All items should be separated by a single space.
***********************************************************************************************************************
Example

Input:
6

Output:
3
2 1+2=2 4+5=5
2 2+3=3 5+6=6
3 3+4=4 3+5=5 3+6=6

Explanation

Lets name values in the array with letters from a to f. The table below describes contents of the array after each step:
  	1 	2 	3 	4 	5 	6
initial values: 	a 	b 	c 	d 	e 	f
after step 1: 	a 	a+b 	c 	d 	d+e 	f
after step 2: 	a 	a+b 	a+b+c 	d 	d+e 	d+e+f
after step 3: 	a 	a+b 	a+b+c 	a+b+c+d 	a+b+c+d+e 	a+b+c+d+e+f

**********************************************************************************************************************/
package medium.unsolved;

public class ParallelComputing {

	public static void main(String[] args) {

	}

}
