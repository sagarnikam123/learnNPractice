/**************************************************************************************************

    catDog - Solved
    
    Return true if the string "cat" and "dog" appear the same number of times in the given string. 
***************************************************************************************************
catDog("catdog") â†’ true
catDog("catcat") â†’ false
catDog("1cat1cadodog") â†’ true
catDog("catxxdogxxxdog") → false
catDog("catxdogxdogxcat") → true
catDog("catxdogxdogxca") → false
catDog("dogdogcat") → false
catDog("dogogcat") → true
catDog("dog") → false
catDog("ca") → true
catDog("c") → true
catDog("") → true
**************************************************************************************************/
package javaExample.string2;

public class CatDog
{

    public static void main(String[] args)
    {
    	System.out.println(catDog("1cat1cadodog"));
    }
    
    public static boolean catDog(String str) {
        
    	int catCount = 0;
    	int dogCount = 0;
    	
    	for(int i=0;i<str.length()-2;i++){
    		
    		if(str.substring(i, i+3).equalsIgnoreCase("cat")) {
    			catCount++; 
    			}
    		if(str.substring(i, i+3).equalsIgnoreCase("dog")){
    			dogCount++;
    		} 
    	}
    	if(catCount==dogCount) return true;
    	return false;
    }

}
