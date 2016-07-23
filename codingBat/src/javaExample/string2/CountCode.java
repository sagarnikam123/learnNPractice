/**************************************************************************************************

    countCode - solved
    
    Return the number of times that the string "code" appears anywhere in the given string, 
    except we'll accept any letter for the 'd', so "cope" and "cooe" count. 
***************************************************************************************************
countCode("aaacodebbb") → 1
countCode("codexxcode") → 2
countCode("cozexxcope") → 2
countCode("cozfxxcope") → 1
countCode("xxcozeyycop") → 1
countCode("cozcop") → 0
countCode("abcxyz") → 0
countCode("code") → 1
countCode("ode") → 0
countCode("c") → 0
countCode("") → 0
countCode("AAcodeBBcoleCCccoreDD") → 3
countCode("AAcodeBBcoleCCccorfDD") → 2
countCode("coAcodeBcoleccoreDD") → 3
**************************************************************************************************/
package javaExample.string2;

public class CountCode
{

    public static void main(String[] args)
    {
    	System.out.println(countCode("cozexxcope"));
    }
    
    public static int countCode(String str) {
        
    	int codeCount = 0;
    	if(str.length() < 4){
    		return codeCount;
    	}
    	for(int i=0;i<str.length()-3;i++){
    		if(str.charAt(i)=='c' && str.charAt(i+1)=='o' && str.charAt(i+3)=='e' ){
    			codeCount++;
    		}
    	}
    	return codeCount;
    }


}
