/**************************************************************************************************

    repeatFront - solved
    
    Given a string and an int n, return a string made of the first n characters of the string,
    followed by the first n-1 characters of the string, and so on. You may assume that n is
    between 0 and the length of the string, inclusive (i.e. n >= 0 and n <= str.length()). 
***************************************************************************************************
repeatFront("Chocolate", 4) → "ChocChoChC"
repeatFront("Chocolate", 3) → "ChoChC"
repeatFront("Ice Cream", 2) → "IcI"
repeatFront("Ice Cream", 1) → "I"
repeatFront("Ice Cream", 0) → ""
repeatFront("xyz", 3) → "xyzxyx"
repeatFront("", 0) → ""
repeatFront("Java", 4) → "JavaJavJaJ"
repeatFront("Java", 1) → "J"
**************************************************************************************************/
package javaExample.string2;

public class RepeatFront
{

    public static void main(String[] args)
    {
    	System.out.println(repeatFront("Ice Cream", 2));
    }
    
    public static String repeatFront(String str, int n) {
        
    	String partava = "";
    	for(int i=0,j=n;i<n;i++,j--){
    		partava += str.substring(0, j);
    	}
    	
    	return partava;
    }

}
