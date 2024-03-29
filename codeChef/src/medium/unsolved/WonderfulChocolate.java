/**

	A Wonderful Chocolate

	A few days ago Chef decided to cook a new dish – chocolate. This must be something amazing. The idea is that chocolate bar will be divided into cells. It must be long, but narrow. To interest customers every bar must be unique. Bar will consist of cells of black or white chocolate. In addition every bar must be good looking. It means that the bar must not contain any totally white or totally black rectangle, whose width and length are more than 1 (Note that a bar is good if (width > 1 and length = 1) or (length > 1 and width = 1)). Now, Chef wants to know how many bars can he cook? He’s not good in computer programming, so this task is for you.
	By the way, it's not permitted to rorate bars. It means that WBB and BBW are different bars.

	Input
	Input contains two integers: width a (1 ≤ a ≤ 6) and length b (1 ≤ b < 263).

	Output
	Print in output a single integer which is the answer. Answer can be a very big number, so print it modulo 109+7 (1000000007).
***********************************************************************************************************************
Example

Input:
2 2

Output:
14

Input:
3 3

Output:
322

Explanation

In the first sample, there are 2^(2*2) = 16 ways coloring the chocolate in total, and the only following 2 chocolates are not good

WW
WW

The bar contains a totally white rectangle of length = 2 and width = 2.

BB
BB

The bar contains a totally black rectangle of length = 2 and width = 2.

**********************************************************************************************************************/

package medium.unsolved;

public class WonderfulChocolate {

	public static void main(String[] args) {

	}

}
