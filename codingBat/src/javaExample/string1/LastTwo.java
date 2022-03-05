/**************************************************************************************************

    lastTwo - solved

    Given a string of any length, return a new string where the last 2 chars,
    if present, are swapped, so "coding" yields "codign".
***************************************************************************************************
lastTwo("coding") → "codign"
lastTwo("cat") → "cta"
lastTwo("ab") → "ba"
lastTwo("a") → "a"
lastTwo("") → ""
**************************************************************************************************/
package javaExample.string1;

public class LastTwo
{

    public static void main(String[] args)
    {
    	System.out.println(lastTwo("coding"));
    	System.out.println(lastTwo("cat"));
    	System.out.println(lastTwo("ab"));
    	//System.out.println(lastTwo(""));
    }

    public static String lastTwo(String dhinchak){
    	int rassam = dhinchak.length();
    	if(rassam == 2){
    		return dhinchak.substring(rassam-1)+dhinchak.substring(rassam-2,rassam-1);
    	}else if(rassam > 2){
    		return dhinchak.substring(0, rassam-2)+dhinchak.substring(rassam-1)+dhinchak.substring(rassam-2,rassam-1);
    	}

    	return dhinchak;
    }

}
