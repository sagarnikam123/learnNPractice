/*

	Chocolate Feast

	Little Bob loves chocolates, and goes to the store with $N money in his pocket. The price of each chocolate is $C.
	The store offers a discount: for every M wrappers he gives to the store, he gets one chocolate for free. 
	How many chocolates does Bob get to eat?
	
	Input Format:
	The first line contains the number of test cases T(<=1000).
	T lines follow, each of which contains three integers N, C and M
	
	Output Format:
	Print the total number of chocolates Bob eats.
	
	Constraints:
	2≤N≤105
	1≤C≤N
	2≤M≤N
***********************************************************************************************************************
Sample input
3
10 2 5
12 4 4
6 2 2

Sample Output
6
3
5

Explanation
In the first case, he can buy 5 chocolates with $10 and exchange the 5 wrappers to get one more chocolate. 
	Thus, the total number of chocolates is 6.
In the second case, he can buy 3 chocolates for $12. However, it takes 4 wrappers to get one more chocolate. 
	He can't avail the offer and hence the total number of chocolates remains 3.
In the third case, he can buy 3 chocolates for $6. Now he can give 2 of this 3 wrappers and get 1 chocolate. Again, 
	he can use his 1 unused wrapper and 1 wrapper of new chocolate to get one more chocolate. So the total is 5.
**********************************************************************************************************************/
package algorithms.warmup;

import java.util.Scanner;

public class ChocolateFeast {

	public static void main(String[] args) {

		Scanner scn = new Scanner(System.in);
		
		int noTestCases = Integer.parseInt(scn.nextLine()); // total no of test cases to be tested
		//System.out.println(noTestCases);
		
		for(int i = 0;i< noTestCases;i++){
			String testCase = scn.nextLine();
			//System.out.println(testCase);
			
			String[] testIntegers = testCase.split(" ");
			int n = Integer.parseInt(testIntegers[0]); // no of rupee 
			int c = Integer.parseInt(testIntegers[1]); // price of each chocolate
			int m = Integer.parseInt(testIntegers[2]); // no of wrapper (gives 1 chocolate only)
			
			// calculations
			int noChocolatesBuying = n/c;
			int noWrappers = noChocolatesBuying; // initial
			// Bob will get 1 chocolate for m no of wrappers 
			if(noWrappers >= m){
				int extraCholocate = 1;
				//noChocolatesBuying = noChocolatesBuying + extraCholocate;
				int remainedWrappers = noWrappers;
				int overAllWrapperCounter = 0;
				while(m <= remainedWrappers){
					noChocolatesBuying = noChocolatesBuying + extraCholocate;
					remainedWrappers = remainedWrappers - m;
					overAllWrapperCounter ++;
					if(overAllWrapperCounter==m){
						noChocolatesBuying = noChocolatesBuying + extraCholocate;
						overAllWrapperCounter =0;
						}
				}
			}
			System.out.println(noChocolatesBuying);
			
		}
		// closing scanner
		scn.close();
	} //main

} // class
