/**************************************************************************************************

    maxBlock - solved

    Given a string, return the length of the largest "block" in the string.
    A block is a run of adjacent chars that are the same.
***************************************************************************************************
maxBlock("hoopla") â†’ 2
maxBlock("abbCCCddBBBxx") â†’ 3
maxBlock("") â†’ 0
maxBlock("xyz") → 1
maxBlock("xxyz") → 2
maxBlock("xyzz") → 2
maxBlock("abbbcbbbxbbbx") → 3
maxBlock("XXBBBbbxx") → 3
maxBlock("XXBBBBbbxx") → 4
maxBlock("XXBBBbbxxXXXX") → 4
maxBlock("XX2222BBBbbXX2222") → 4
**************************************************************************************************/
package javaExample.string3;

public class MaxBlock
{

    public static void main(String[] args)
    {
    	System.out.println(maxBlock(""));
    }

    public static int maxBlock(String str) {

    	int largeBlock = 0;
    	if(str.length()==0) return largeBlock;

    	for(int i=0;i<str.length();i++){

    		char curKartoon = str.charAt(i);
    		int curBlockMax = 1;
    		for(int j=i+1;j<str.length();j++){
    			if(curKartoon==str.charAt(j)){
    				curBlockMax=curBlockMax+1;
    			}else{
    				j=str.length();
    			}
    		}
    		if(largeBlock < curBlockMax) largeBlock = curBlockMax;

    	}

    	return largeBlock;
    }


}
