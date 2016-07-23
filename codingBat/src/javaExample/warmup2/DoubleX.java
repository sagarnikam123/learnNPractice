/**************************************************************************************************

    doubleX - solved
    
    Given a string, return true if the first instance of "x" 
    in the string is immediately followed by another "x". 
***************************************************************************************************
doubleX("axxbb") → true
doubleX("axaxax") → false
doubleX("xxxxx") → true
doubleX("xaxxx") → false
doubleX("aaaax") → false
doubleX("") → false
doubleX("abc") → false
doubleX("x") → false
doubleX("xx") → true
doubleX("xax") → false
doubleX("xaxx") → false
**************************************************************************************************/
package javaExample.warmup2;

public class DoubleX
{

    public static void main(String[] args)
    {
    	System.out.println(doubleX("axxbb"));
    	System.out.println(doubleX("axaxax"));
    	System.out.println(doubleX("xxxxx"));
    	System.out.println(doubleX("xaxxx")); // false
    	System.out.println(doubleX("xaxx"));
    	System.out.println(doubleX("")); // false
    	System.out.println(doubleX("abc"));
    	System.out.println(doubleX("x"));
    	System.out.println(doubleX("xx"));
    	System.out.println(doubleX("xax"));
    	System.out.println(doubleX("xaxx")); // false
    }
    
    public static boolean doubleX(String florist){
    	
    	int firstX = florist.indexOf("x");
    	//System.out.println(firstX);
    	
    	// Is char at i+1 also an "x"?
    	  if (firstX+1 >= florist.length()) return false; // check i+1 in bounds?
    	  return florist.substring(firstX+1, firstX+2).equals("x");
    	
    }

}
