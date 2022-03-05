/**************************************************************************************************

    oneTwo - solved

    Given a string, compute a new string by moving the first char to come after the next two chars,
    so "abc" yields "bca". Repeat this process for each subsequent group of 3 chars,
    so "abcdef" yields "bcaefd". Ignore any group of fewer than 3 chars at the end.
***************************************************************************************************
oneTwo("abc") → "bca"
oneTwo("tca") → "cat"
oneTwo("tcagdo") → "catdog"
oneTwo("chocolate") → "hocolctea"
oneTwo("1234567890") → "231564897"-
oneTwo("xabxabxabxabxabxabxab") → "abxabxabxabxabxabxabx"
oneTwo("abcdefx") → "bcaefd" -
oneTwo("abcdefxy") → "bcaefd" -
oneTwo("abcdefxyz") → "bcaefdyzx"
oneTwo("") → ""
oneTwo("x") → ""-
oneTwo("xy") → ""-
oneTwo("xyz") → "yzx"
oneTwo("abcdefghijklkmnopqrstuvwxyz1234567890") → "bcaefdhigkljmnkpqostrvwuyzx231564897"-
oneTwo("abcdefghijklkmnopqrstuvwxyz123456789") → "bcaefdhigkljmnkpqostrvwuyzx231564897"
oneTwo("abcdefghijklkmnopqrstuvwxyz12345678") → "bcaefdhigkljmnkpqostrvwuyzx231564"-
**************************************************************************************************/
package javaExample.string2;

public class OneTwo {

	public static void main(String[] args)
    {
    	System.out.println(oneTwo("abcdefghijklkmnopqrstuvwxyz1234567890"));
    }

	public static String oneTwo(String str) {

		String bawari = "";
		String engage = "";

		for(int i=0;i < str.length();i++){

			bawari += str.charAt(i);

			if(bawari.length()==3){
				engage += bawari.substring(1,3)+bawari.charAt(0);
				bawari = "";
			}
			if((bawari.length() < 3 && i == str.length()-1) || str.length() < 3){
				break;
			}
		}
		return engage;
	}

}
