/**************************************************************************************************

    commonTwo - copied - solved
    
    Start with two arrays of strings, a and b, each in alphabetical order, possibly with duplicates.
    Return the count of the number of strings which appear in both arrays. The best "linear" solution
    makes a single pass over both arrays, taking advantage of the fact that they are in alphabetical order.
***************************************************************************************************
commonTwo({"a", "c", "x"}, {"b", "c", "d", "x"}) → 2
commonTwo({"a", "c", "x"}, {"a", "b", "c", "x", "z"}) → 3
commonTwo({"a", "b", "c"}, {"a", "b", "c"}) → 3
commonTwo({"a", "a", "b", "b", "c"}, {"a", "b", "c"}) → 3-
commonTwo({"a", "a", "b", "b", "c"}, {"a", "b", "b", "b", "c"}) → 3-
commonTwo({"a", "a", "b", "b", "c"}, {"a", "b", "b", "c", "c"}) → 3-
commonTwo({"b", "b", "b", "b", "c"}, {"a", "b", "b", "b", "c"}) → 2-
commonTwo({"a", "b", "c", "c", "d"}, {"a", "b", "b", "c", "d", "d"}) → 4-
commonTwo({"a", "a", "b", "b", "c"}, {"b", "b", "b"}) → 1-
commonTwo({"a", "a", "b", "b", "c"}, {"c", "c"}) → 1
commonTwo({"a", "a", "b", "b", "c"}, {"b", "b", "b", "x"}) → 1-
commonTwo({"a", "a", "b", "b", "c"}, {"b", "b"}) → 1-
commonTwo({"a"}, {"a", "b"}) → 1
commonTwo({"a"}, {"b"}) → 0
commonTwo({"a", "a"}, {"b", "b"}) → 0
commonTwo({"a", "b"}, {"a", "b"}) → 2
**************************************************************************************************/
package javaExample.ap1;

public class CommonTwo
{

    public static void main(String[] args)
    {
    	String megaMart [] =  {"a", "c", "x"};
    	String dMart [] = {"a", "b", "c", "x", "z"};
    	System.out.println(commonTwo(megaMart,dMart));
    }
    
    public static int commonTwo(String[] a, String[] b) {
        
    	  int ai = 0, bi = 0, count = 0;
    	    while (ai < a.length && bi < b.length) {
    	      while (ai < a.length && bi < b.length && a[ai].compareTo(b[bi]) < 0)
    	        ai++;
    	      while (ai < a.length && bi < b.length && b[bi].compareTo(a[ai]) < 0)
    	        bi++;

    	      if (ai < a.length && bi < b.length && a[ai].compareTo(b[bi]) == 0)
    	        count++;

    	      int tmp = ai;
    	      while (ai < a.length && a[ai].compareTo(a[tmp]) == 0)
    	        ai++;
    	      tmp = bi;
    	      while (bi < b.length && b[bi].compareTo(b[tmp]) == 0)
    	        bi++;
    	    }
    	    return count;
    }
}
