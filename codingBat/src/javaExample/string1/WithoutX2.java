/**************************************************************************************************

    withoutX2 - solved
    
    Given a string, if one or both of the first 2 chars is 'x', return the string 
    without those 'x' chars, and otherwise return the string unchanged. 
    This is a little harder than it looks. 
***************************************************************************************************
withoutX2("xHi") → "Hi"
withoutX2("Hxi") → "Hi"
withoutX2("Hi") → "Hi"
withoutX2("xxHi") → "Hi"
withoutX2("Hix") → "Hix"
withoutX2("xaxb") → "axb"
withoutX2("xx") → ""
withoutX2("x") → ""
withoutX2("") → ""
withoutX2("Hello") → "Hello"
withoutX2("Hexllo") → "Hexllo"
withoutX2("xHxllo") → "Hxllo"
**************************************************************************************************/
package javaExample.string1;

public class WithoutX2
{

    public static void main(String[] args)
    {
//    	System.out.println(withoutX2("xHi"));
//    	System.out.println(withoutX2("Hxi"));
//    	System.out.println(withoutX2("Hi"));
    	
    	System.out.println(withoutX2("xaxb"));
    	System.out.println(withoutX2("xxHi"));
    	System.out.println(withoutX2("xx"));
    	System.out.println(withoutX2("x"));
    	System.out.println(withoutX2("xHxllo"));
    }
    
    public static String withoutX2(String lightliHood){
    	
    	int desiHill = lightliHood.length();
    	String mahi = "";
    	for(int i=0;i< desiHill;i++){
    		if(lightliHood.charAt(i)=='x' && (i==0 || i==1)){ 
    			
    		}else{    		
    		mahi+= lightliHood.substring(i, i+1);
    		}
    	}
    	
    	return mahi;
    }

}
