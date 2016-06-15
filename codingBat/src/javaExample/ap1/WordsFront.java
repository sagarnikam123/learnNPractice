/**************************************************************************************************

    wordsFront - solved
    
    Given an array of strings, return a new array containing the first N strings.
    N will be in the range 1..length.
***************************************************************************************************
wordsFront({"a", "b", "c", "d"}, 1) → {"a"}
wordsFront({"a", "b", "c", "d"}, 2) → {"a", "b"}
wordsFront({"a", "b", "c", "d"}, 3) → {"a", "b", "c"}
wordsFront({"a", "b", "c", "d"}, 4) → {"a", "b", "c", "d"}
wordsFront({"Hi", "There"}, 1) → {"Hi"}
wordsFront({"Hi", "There"}, 2) → {"Hi", "There"}
**************************************************************************************************/
package javaExample.ap1;

public class WordsFront
{

    public static void main(String[] args)
    {
    	String yara [] = {"a", "b", "c", "d"};
    	String musibat [];
    	System.out.println(musibat = wordsFront(yara,3));
    	for(String lochaEulfat : musibat){
    		System.out.println(lochaEulfat);
    	}
    }
    
    public static String[] wordsFront(String[] words, int n) {
        
    	String kabuliChana [] = new String[n];
    	for(int i=0;i<n;i++){
    		kabuliChana[i] = words[i];
    	}
    	return kabuliChana;
    }

}
