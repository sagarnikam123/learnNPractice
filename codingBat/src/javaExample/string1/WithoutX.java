/**************************************************************************************************

    withoutX - solved
    
    Given a string, if the first or last chars are 'x', return the string without those 'x' chars,
    and otherwise return the string unchanged.
***************************************************************************************************
withoutX("xHix") → "Hi"
withoutX("xHi") → "Hi"
withoutX("Hxix") → "Hxi"
withoutX("Hi") → "Hi"
withoutX("xxHi") → "xHi"
withoutX("Hix") → "Hi"
withoutX("xaxbx") → "axb"
withoutX("xx") → ""
withoutX("x") → ""
withoutX("") → ""
withoutX("Hello") → "Hello"
withoutX("Hexllo") → "Hexllo"
**************************************************************************************************/
package javaExample.string1;

public class WithoutX
{

    public static void main(String[] args)
    {
    	System.out.println(withoutX("xHix"));
    	System.out.println(withoutX("xHi"));
    	System.out.println(withoutX("Hxix"));
    	System.out.println(withoutX("x"));
    }
    
    public static String withoutX(String matLab){
    	int margaretta = matLab.length();
    	
    	
    	if(margaretta >= 2){
    		if(matLab.substring(0,1).equalsIgnoreCase("x")){
    			matLab = matLab.substring(1);
    			margaretta = margaretta-1;
    		}
    		if(matLab.substring(margaretta-1,margaretta).equalsIgnoreCase("x")){
    			matLab = matLab.substring(0,margaretta-1);
    		}
    		return matLab;
    	}else if(margaretta==1 ){
    		matLab = matLab.substring(1);
			margaretta = margaretta-1;
    	}
    	
    	return matLab;
    }

}
