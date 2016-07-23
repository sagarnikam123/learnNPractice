/*
	
	Solve me first - Solved

	This is an introductory challenge. The purpose of this challenge is to give you a working I/O template in your 
	preferred language. It includes scanning 2 integers from STDIN, calling a function, returning a value,
	and printing it to STDOUT.
	Your task is to scan two numbers from STDIN, and print the sum A+B on STDOUT.
	Note: The code has been saved in a template, which you can submit if you want.
	
	Input Format
	Given A and B on two different lines.
	
	Output Format
	An integer that denotes Sum (A + B)
	
	Constraints
	1 ≤ A, B ≤ 1000
***********************************************************************************************************************
Sample Input
2
3

Sample Output
5
**********************************************************************************************************************/
package algorithms.warmup;

import java.util.Scanner;

public class SolveMeFirst {

	   static int solveMeFirst(int a, int b) {
	        return a+b;
	   }

	   
	 public static void main(String[] args) {
	        Scanner in = new Scanner(System.in);
	        int _a;
	        _a = in.nextInt();
	        int _b;
	        _b = in.nextInt();
	        int sum;
	        sum = solveMeFirst(_a, _b);
	        System.out.println(sum);
	        in.close();
	   }
	

}
