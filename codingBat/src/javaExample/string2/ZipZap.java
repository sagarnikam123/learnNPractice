/**************************************************************************************************

    zipZap - solved

    Look for patterns like "zip" and "zap" in the string -- length-3, starting with 'z' and ending
    with 'p'. Return a string where for all such words, the middle letter is gone, so "zipXzap" yields "zpXzp".
***************************************************************************************************
zipZap("zipXzap") â†’ "zpXzp"
zipZap("zopzop") â†’ "zpzp"
zipZap("zzzopzop") â†’ "zzzpzp"
zipZap("zibzap") → "zibzp"
zipZap("zip") → "zp"
zipZap("zi") → "zi"-
zipZap("z") → "z"-
zipZap("") → ""
zipZap("zzp") → "zp"
zipZap("abcppp") → "abcppp"-
zipZap("azbcppp") → "azbcppp"-
zipZap("azbcpzpp") → "azbcpzp"
**************************************************************************************************/
package javaExample.string2;

public class ZipZap
{

    public static void main(String[] args)
    {
    	System.out.println(zipZap("azbcppp"));
    }

    public static String zipZap(String str) {

    	String pheko = "";
    	if(str.length() < 3) return str;

    	for(int i=0;i< str.length();i++){

    		if(str.charAt(i)=='z' && i+2 < str.length()){
    			if( str.charAt(i+2)=='p'){
    				pheko +="zp";
    				i=i+2;
    			}else{
        			pheko +=String.valueOf(str.charAt(i));
        		}
    		}else{
    			pheko +=String.valueOf(str.charAt(i));
    		}
    	}
        return pheko;
    }


}
