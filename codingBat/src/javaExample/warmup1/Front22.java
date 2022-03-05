/**************************************************************************************************

    front22 - solved

    Given a string, take the first 2 chars and
    return the string with the 2 chars added at both the front and back,
    so "kitten" yields"kikittenki".
    If the string length is less than 2, use whatever chars are there.
***************************************************************************************************
front22("kitten") → "kikittenki"
front22("Ha") → "HaHaHa"
front22("abc") → "ababcab"
front22("ab") → "ababab"
front22("a") → "aaa"
front22("") → ""
front22("Logic") → "LoLogicLo"
**************************************************************************************************/
package javaExample.warmup1;

public class Front22{

    public static void main(String[] args){

         System.out.println(front22("kitten") );
         System.out.println(front22("Ha") );
         System.out.println(front22("abc") );

    }

    public static String front22(String str) {
        // First figure the number of chars to take
        int take = 2;
        if (take > str.length()) {
          take = str.length();
        }

        String front = str.substring(0, take);
        return front + str + front;
      }

}
