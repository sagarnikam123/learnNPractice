/**************************************************************************************************

    mergeTwo - solved - copied

    Start with two arrays of strings, A and B, each with its elements in alphabetical order and
    without duplicates. Return a new array containing the first N elements from the two arrays.
    The result array should be in alphabetical order and without duplicates. A and B will both
    have a length which is N or more. The best "linear" solution makes a single pass over A and B,
    taking advantage of the fact that they are in alphabetical order,
    copying elements directly to the new array.
***************************************************************************************************
mergeTwo({"a", "c", "z"}, {"b", "f", "z"}, 3) → {"a", "b", "c"}
mergeTwo({"a", "c", "z"}, {"c", "f", "z"}, 3) → {"a", "c", "f"}
mergeTwo({"f", "g", "z"}, {"c", "f", "g"}, 3) → {"c", "f", "g"}
mergeTwo({"a", "c", "z"}, {"a", "c", "z"}, 3) → {"a", "c", "z"}
mergeTwo({"a", "b", "c", "z"}, {"a", "c", "z"}, 3) → {"a", "b", "c"}
mergeTwo({"a", "c", "z"}, {"a", "b", "c", "z"}, 3) → {"a", "b", "c"}
mergeTwo({"a", "c", "z"}, {"a", "c", "z"}, 2) → {"a", "c"}
mergeTwo({"a", "c", "z"}, {"a", "c", "y", "z"}, 3) → {"a", "c", "y"}
mergeTwo({"x", "y", "z"}, {"a", "b", "z"}, 3) → {"a", "b", "x"}
**************************************************************************************************/
package javaExample.ap1;

public class MergeTwo
{

    public static void main(String[] args)
    {
    	String hehe [] = {"a", "c", "z"};
    	String kyaKare [] = {"b", "f", "z"};
    	String beetiUmra [];

    	System.out.println(beetiUmra = mergeTwo(hehe,kyaKare,3));
    	for(String korda : beetiUmra){
    		System.out.println(korda);
    	}

    }

    public static String[] mergeTwo(String[] a, String[] b, int n) {

    	int ai = 0, bi = 0, k = 0;
    	String khudiRam [] = new String[n];
    	for(int i = 0;i < n;i++){

    		if( i > 0){
    			String pre = khudiRam [i -1];

    			while(a[ai].compareTo(pre) < 1)
    				ai++;
    			while(b[bi].compareTo(pre) < 1)
    				bi++;
    		}
    		if(a[ai].compareTo(b[bi]) < 0){
    			khudiRam[k] = a[ai]; k++;
    		}else {
    			khudiRam[k] = b[bi]; k++;
    		}

    	}
    	return khudiRam;
    }

}
