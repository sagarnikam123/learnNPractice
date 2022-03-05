/**************************************************************************************************

    notReplace - solved

    Given a string, return a string where every appearance of the lowercase word "is" has been
    replaced with "is not". The word "is" should not be immediately preceeded or followed by a
    letter -- so for example the "is" in "this" does not count.
    (Note: Character.isLetter(char) tests if a char is a letter.)
***************************************************************************************************
notReplace("is test") → "is not test"
notReplace("is-is") → "is not-is not"
notReplace("This is right") → "This is not right"
notReplace("This is isabell") → "This is not isabell"
notReplace("") → ""
notReplace("is") → "is not"
notReplace("isis") → "isis"
notReplace("Dis is bliss is") → "Dis is not bliss is not"
notReplace("is his") → "is not his"
notReplace("xis yis") → "xis yis"
notReplace("AAAis is") → "AAAis is not"
**************************************************************************************************/
package javaExample.string3;

public class NotReplace
{

    public static void main(String[] args)
    {
    	System.out.println(notReplace("AAAis is"));
    }

    public static String notReplace(String str) {

    	if(str.length() <2){
    		return str;
    	}

    	String fek = "";
    	for(int i=0;i<str.length();i++){
    		String temp = "";
    		String nonCharItem = "";
    		for(int j=i;j<str.length();j++){
    			if(Character.isLetter(str.charAt(j))){
        			temp += String.valueOf(str.charAt(j));
        			if(j==str.length()-1){ i =j;}
        		}else{
        			nonCharItem += String.valueOf(str.charAt(j));
        			i = j;
        			j=str.length();
        		}
    		}
    		if(temp.equals("is")){
    			fek += "is not";
    		}else {
    			fek += temp;
    		}
    		if(!nonCharItem.isEmpty()){
    			fek += nonCharItem;
    		}

    	}

    	return fek;
    }


}
