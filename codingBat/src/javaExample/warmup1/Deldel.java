/**************************************************************************************************

    delDel - solved

    Given a string, if the string "del" appears starting at index 1,
    return a string where that "del" has been deleted. Otherwise,
    return the string unchanged.
***************************************************************************************************
delDel("adelbc") → "abc"
delDel("adelHello") → "aHello"
delDel("adedbc") → "adedbc"
delDel("abcdel") → "abcdel"
delDel("add") → "add"
delDel("ad") → "ad"
delDel("a") → "a"
delDel("") → ""
delDel("del") → "del"
delDel("adel") → "a"
delDel("aadelbb") → "aadelbb"
**************************************************************************************************/
package javaExample.warmup1;

public class Deldel{

    public static void main(String[] args){

         System.out.println(delDel("adelbc"));
         System.out.println(delDel("adelHello"));
         System.out.println(delDel("adedbc"));

    }

    public static String delDel(String str) {
        if (str.length()>=4 && str.substring(1, 4).equals("del")) {
          // First char + rest of string starting at 4
          return str.substring(0, 1) + str.substring(4);
        }
        // Otherwise return the original string.
        return str;
      }


}
