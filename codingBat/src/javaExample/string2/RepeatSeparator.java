/**************************************************************************************************

    repeatSeparator - solved

    Given two strings, word and a separator, return a big string made of count occurences
    of the word, separated by the separator string.
***************************************************************************************************
repeatSeparator("Word", "X", 3) → "WordXWordXWord"
repeatSeparator("This", "And", 2) → "ThisAndThis"
repeatSeparator("This", "And", 1) → "This"
repeatSeparator("Hi", "-n-", 2) → "Hi-n-Hi"
repeatSeparator("AAA", "", 1) → "AAA"
repeatSeparator("AAA", "", 0) → ""
repeatSeparator("A", "B", 5) → "ABABABABA"
repeatSeparator("abc", "XX", 3) → "abcXXabcXXabc"
repeatSeparator("abc", "XX", 2) → "abcXXabc"
repeatSeparator("abc", "XX", 1) → "abc"
repeatSeparator("XYZ", "a", 2) → "XYZaXYZ"
**************************************************************************************************/
package javaExample.string2;

public class RepeatSeparator
{

    public static void main(String[] args)
    {
    	System.out.println(repeatSeparator("This", "And", 1));
    }

    public static String repeatSeparator(String word, String sep, int count) {

    	String throwala = "";
    	for(int i =0,j=count-1;i<count;i++,j--){
    		throwala += word;
    		if(j> 0) throwala+=sep;
    	}

    	return throwala;
    }


}
