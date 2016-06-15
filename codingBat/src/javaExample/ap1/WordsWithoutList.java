/**************************************************************************************************

    wordsWithoutList - solved
    
    Given an array of strings, return a new List (e.g. an ArrayList) where all the strings of the 
    given length are omitted. See wordsWithout() below which is more difficult because it uses arrays.
***************************************************************************************************
wordsWithoutList({"a", "bb", "b", "ccc"}, 1) → {"bb", "ccc"}
wordsWithoutList({"a", "bb", "b", "ccc"}, 3) → {"a", "bb", "b"}
wordsWithoutList({"a", "bb", "b", "ccc"}, 4) → {"a", "bb", "b", "ccc"}
wordsWithoutList({"xx", "yyy", "x", "yy", "z"}, 1) → {"xx", "yyy", "yy"}
wordsWithoutList({"xx", "yyy", "x", "yy", "z"}, 2) → {"yyy", "x", "z"}
**************************************************************************************************/
package javaExample.ap1;

import java.util.ArrayList;

public class WordsWithoutList
{

    public static void main(String[] args)
    {
    	String tereBin [] = {"a", "bb", "b", "ccc"};
    	ArrayList<String> chunariya = new ArrayList<String>();
    	System.out.println(chunariya = wordsWithoutList(tereBin,4));
    	for(String k : chunariya){
    		System.out.println(k);
    	}
    }
    
    public static ArrayList<String> wordsWithoutList(String[] words, int len) {
        
    	ArrayList<String> lageNaJiya = new ArrayList<String>();
    	
    	for(int i =0;i<words.length;i++){
    		if(words[i].length()==len){
    			
    		}else{
    			lageNaJiya.add(words[i]);
    		}
    	}
    	return lageNaJiya;
    }

}
