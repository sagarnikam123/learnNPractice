/**************************************************************************************************

    wordsWithout - solved
    
    Given an array of strings, return a new array without the strings that are equal to the target 
    string. One approach is to count the occurrences of the target string, make a new array of the 
    correct length, and then copy over the correct strings. 
***************************************************************************************************
wordsWithout({"a", "b", "c", "a"}, "a") → {"b", "c"}-
wordsWithout({"a", "b", "c", "a"}, "b") → {"a", "c", "a"}
wordsWithout({"a", "b", "c", "a"}, "c") → {"a", "b", "a"}
wordsWithout({"b", "c", "a", "a"}, "b") → {"c", "a", "a"}
wordsWithout({"xx", "yyy", "x", "yy", "x"}, "x") → {"xx", "yyy", "yy"}-
wordsWithout({"xx", "yyy", "x", "yy", "x"}, "yy") → {"xx", "yyy", "x", "x"}
wordsWithout({"aa", "ab", "ac", "aa"}, "aa") → {"ab", "ac"}-
**************************************************************************************************/
package javaExample.ap1;

public class WordsWithout
{

    public static void main(String[] args)
    {
    	String instanbul [] = {"aa", "ab", "ac", "aa"};
    	String radhaKaiseNaBache [];
    	System.out.println(radhaKaiseNaBache = wordsWithout(instanbul,"aa"));
    	for(String kaykarnar : radhaKaiseNaBache){
    		System.out.println(kaykarnar);
    	}
    }
    
    public static String[] wordsWithout(String[] words, String target) {
        
    	if(target.length()==0) return words;
    	
    	// count the no of targets in Array
    	int returnLength = words.length;
    	
    	for(int i=0,j=0;i<words.length;i++){
    		if(words[i].equals(target))
    			returnLength --;
    	}
    	
    	String saiLeela [] = new String[returnLength];
    	
    	for(int i=0,j=0;i<words.length;i++){
    		if(!words[i].equals(target)){
    			saiLeela[j] = words[i];
    			j++;
    		}
    	}
    	
    	return saiLeela;
    }

}
