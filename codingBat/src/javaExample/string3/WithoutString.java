/**************************************************************************************************

    withoutString - solved
    
    Given two strings, base and remove, return a version of the base string where all instances of 
    the remove string have been removed (not case sensitive). You may assume that the remove string
    is length 1 or more. Remove only non-overlapping instances, so with "xxx" removing "xx" leaves "x". 
***************************************************************************************************
withoutString("Hello there", "llo") → "He there"
withoutString("Hello there", "e") → "Hllo thr"
withoutString("Hello there", "x") → "Hello there"
withoutString("This is a FISH", "IS") → "Th a FH"-
withoutString("THIS is a FISH", "is") → "TH a FH"-
withoutString("THIS is a FISH", "iS") → "TH a FH"-
withoutString("abxxxxab", "xx") → "abab"
withoutString("abxxxab", "xx") → "abxab"
withoutString("abxxxab", "x") → "abab"
withoutString("xxx", "x") → ""
withoutString("xxx", "xx") → "x"
withoutString("xyzzy", "Y") → "xzz"-
withoutString("", "x") → ""
withoutString("abcabc", "b") → "acac"
withoutString("AA22bb", "2") → "AAbb"
withoutString("1111", "1") → ""
withoutString("1111", "11") → ""
withoutString("MkjtMkx", "Mk") → "jtx"
withoutString("Hi HoHo", "Ho") → "Hi "
**************************************************************************************************/
package javaExample.string3;

public class WithoutString
{

    public static void main(String[] args)
    {
    	System.out.println(withoutString("Hi HoHo", "Ho"));
    }
    
    public static String withoutString(String base, String remove) {
    	
    	String thingi = "";
    	
    	for(int i=0;i<base.length();i++){
    		
    		if(i <=base.length()-remove.length()){
    			if(base.substring(i, i+remove.length()).equalsIgnoreCase(remove)){
    				i=i+remove.length()-1;
    			}else{
    				thingi +=base.substring(i,i+1);
    			}
    		}else{
    			thingi +=base.substring(i,i+1);
    		}
    	}
    	return thingi;
    }


}
