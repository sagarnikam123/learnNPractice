/**************************************************************************************************

    factorial - solved
    
    Given n of 1 or more, return the factorial of n, which is n * (n-1) * (n-2) ... 1.
    Compute the result recursively (without loops). 
***************************************************************************************************
factorial(1) → 1
factorial(2) → 2
factorial(3) → 6
factorial(4) → 24
factorial(5) → 120
factorial(6) → 720
factorial(7) → 5040
factorial(8) → 40320
factorial(12) → 479001600
**************************************************************************************************/
package javaExample.recursion1;

public class Factorial
{

    public static void main(String[] args)
    {
    	System.out.println(factorial(4));
    }
    
    public static int factorial(int n) {
    	
    	if(n==0) return 1;
        return factorial(n-1)*n;
    }

}
