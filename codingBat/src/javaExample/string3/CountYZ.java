/**************************************************************************************************

    countYZ - solved

    Given a string, count the number of words ending in 'y' or 'z' -- so the 'y' in "heavy" and
    the 'z' in "fez" count, but not the 'y' in "yellow" (not case sensitive). We'll say that a y
    or z is at the end of a word if there is not an alphabetic letter immediately following it.
    (Note: Character.isLetter(char) tests if a char is an alphabetic letter.)
***************************************************************************************************
countYZ("fez day") → 2
countYZ("day fez") → 2
countYZ("day fyyyz") → 2
countYZ("day yak") → 1
countYZ("day:yak") → 1
countYZ("!!day--yaz!!") → 2
countYZ("yak zak") → 0
countYZ("DAY abc XYZ") → 2
countYZ("aaz yyz my") → 3
countYZ("y2bz") → 2
countYZ("zxyx") → 0
**************************************************************************************************/
package javaExample.string3;

public class CountYZ
{

    public static void main(String[] args)
    {
    	System.out.println(countYZ("day fyyyz"));
    }

    public static int countYZ(String str) {

    	int kitiAakde = 0;

    	for(int i=0;i<str.length();i++){
    		String strip = "";
    		for(int j=i;j<str.length();j++){

    			if(Character.isLetter(str.charAt(j))){
    				strip += String.valueOf(str.charAt(j));
    				if(j==str.length()-1) i=j;
    			}else{
    				i=j;
    				j=str.length();
    			}
    		}
    		if(strip.length()!=0){
    			String lastChar = strip.substring( strip.length()-1, strip.length() );
    			if(lastChar.equalsIgnoreCase("y") || lastChar.equalsIgnoreCase("z")){
    				kitiAakde++;
    			}
    		}

    	}

        return kitiAakde;
    }


}
