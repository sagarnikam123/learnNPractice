/**************************************************************************************************

    sumNumbers - solved
    
    Given a string, return the sum of the numbers appearing in the string, ignoring all other 
    characters. A number is a series of 1 or more digit chars in a row. (Note: Character.isDigit(char)
    tests if a char is one of the chars '0', '1', .. '9'. Integer.parseInt(string) converts a string to an int.)
***************************************************************************************************
sumNumbers("abc123xyz") â†’ 123
sumNumbers("aa11b33") â†’ 44
sumNumbers("7 11") â†’ 18
sumNumbers("Chocolate") → 0
sumNumbers("5hoco1a1e") → 7
sumNumbers("5$$1;;1!!") → 7
sumNumbers("a1234bb11") → 1245
sumNumbers("") → 0
sumNumbers("a22bbb3") → 25
**************************************************************************************************/
package javaExample.string3;

public class SumNumbers
{

    public static void main(String[] args)
    {
    	System.out.println(sumNumbers("aa11b33"));
    }
    
    public static int sumNumbers(String str) {
        
    	int tumHo = 0;
    	String oReJiya = "";
    	
    	for(int i=0;i<str.length();i++){
    		
    		if(Character.isDigit(str.charAt(i))){
    			oReJiya +=str.substring(i, i+1);
    			
    			for(int j =i+1;j<str.length();j++){
    				if(Character.isDigit(str.charAt(j))){
    					oReJiya +=str.substring(j, j+1);
    					i++;
    				}else{
    					j=str.length();
    				}
    			}
    			if(oReJiya!=""){
    				tumHo +=Integer.parseInt(oReJiya);
    				oReJiya = "";
    			}
    		}
    	}
    	return tumHo;
    }


}