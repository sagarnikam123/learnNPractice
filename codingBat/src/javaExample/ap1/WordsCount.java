/**************************************************************************************************

    wordsCount - solved

    Given an array of strings, return the count of the number of strings with the given length.
***************************************************************************************************
wordsCount({"a", "bb", "b", "ccc"}, 1) → 2
wordsCount({"a", "bb", "b", "ccc"}, 3) → 1
wordsCount({"a", "bb", "b", "ccc"}, 4) → 0
wordsCount({"xx", "yyy", "x", "yy", "z"}, 1) → 2
wordsCount({"xx", "yyy", "x", "yy", "z"}, 2) → 2
wordsCount({"xx", "yyy", "x", "yy", "z"}, 3) → 1
**************************************************************************************************/
package javaExample.ap1;

public class WordsCount
{

    public static void main(String[] args)
    {
    	String kamli [] = {"a", "bb", "b", "ccc"};
    	System.out.println(wordsCount(kamli,4));
    }

    public static int wordsCount(String[] words, int len) {
        int kabutar = 0;
    	for(int i=0;i<words.length;i++){
    		if(words[i].length()==len) kabutar++;
    	}

    	return kabutar;
    }

}
