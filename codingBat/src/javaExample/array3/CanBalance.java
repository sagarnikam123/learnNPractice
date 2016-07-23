/**************************************************************************************************

    canBalance - solved-copied
    
    Given a non-empty array, return true if there is a place to split the array so that the sum of
    the numbers on one side is equal to the sum of the numbers on the other side.
***************************************************************************************************
canBalance({1, 1, 1, 2, 1}) → true
canBalance({2, 1, 1, 2, 1}) → false
canBalance({10, 10}) → true
canBalance({10, 0, 1, -1, 10}) → true-
canBalance({1, 1, 1, 1, 4}) → true-
canBalance({2, 1, 1, 1, 4}) → false-
canBalance({2, 3, 4, 1, 2}) → false
canBalance({1, 2, 3, 1, 0, 2, 3}) → true-
canBalance({1, 2, 3, 1, 0, 1, 3}) → false
canBalance({1}) → false
canBalance({1, 1, 1, 2, 1}) → true
**************************************************************************************************/
package javaExample.array3;

public class CanBalance
{

    public static void main(String[] args)
    {
    	int pull [] = {1, 2, 3, 1, 0, 2, 3};
    	System.out.println(canBalance(pull));
    }
    
    public static boolean canBalance(int[] nums) {
    	
    	int sumleft, sumright;
        for (int i = 0; i < nums.length; i++) {
          sumleft = 0;
          sumright = 0;
          for (int j = 0; j <= i; j++)
            sumleft += nums[j];
          for (int k = i + 1; k < nums.length; k++)
            sumright += nums[k];
          if (sumleft == sumright)
            return true;
        }
        return false;
    }

}
