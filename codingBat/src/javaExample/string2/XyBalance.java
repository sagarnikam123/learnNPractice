/**************************************************************************************************

    xyBalance - solved

    We'll say that a String is xy-balanced if for all the 'x' chars in the string,
    there exists a 'y' char somewhere later in the string. So "xxy" is balanced, but "xyx" is not.
    One 'y' can balance multiple 'x's. Return true if the given string is xy-balanced.
***************************************************************************************************
xyBalance("aaxbby") â†’ true
xyBalance("aaxbb") â†’ false
xyBalance("yaaxbb") â†’ false
xyBalance("yaaxbby") → true
xyBalance("xaxxbby") → true
xyBalance("xaxxbbyx") → false -
xyBalance("xxbxy") → true
xyBalance("xxbx") → false
xyBalance("bbb") → true-
xyBalance("bxbb") → false
xyBalance("bxyb") → true
xyBalance("xy") → true
xyBalance("y") → true
xyBalance("x") → false
xyBalance("") → true-
xyBalance("yxyxyxyx") → false-
xyBalance("yxyxyxyxy") → true
xyBalance("12xabxxydxyxyzz") → true
**************************************************************************************************/
package javaExample.string2;

public class XyBalance
{

    public static void main(String[] args)
    {
    	System.out.println(xyBalance("aaxbby"));
    }

    public static boolean xyBalance(String str) {

    	boolean balanceXY = true;

    	if(str.length()==0) return balanceXY;

    	for(int i =0;i<str.length();i++){

    		if(str.charAt(i)=='x'){

    			for(int j=i+1;j< str.length();j++){
    				if(str.charAt(j)=='y'){
    					balanceXY= true;
    					j=str.length()-1;
    				}else if(str.charAt(j)!='y' && j==str.length()-1){
    					return false;
    				}
    			}
    			if(i==str.length()-1){
    				balanceXY = false;
    			}

    		}
    	}

    	return balanceXY;
    }


}
