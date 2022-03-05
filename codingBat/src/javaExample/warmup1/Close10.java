/**************************************************************************************************

    close10 - solved

    Given 2 int values, return whichever value is nearest to the value 10,
    or return 0 in the event of a tie.
    Note that Math.abs(n) returns the absolute value of a number.
***************************************************************************************************
close10(8, 13) → 8
close10(13, 8) → 8
close10(13, 7) → 0
close10(7, 13) → 0	0
close10(9, 13) → 9	9
close10(13, 8) → 8	8
close10(10, 12) → 10	10
close10(11, 10) → 10	10
close10(5, 21) → 5	5
close10(0, 20) → 0	0
close10(10, 10) → 0	0
**************************************************************************************************/
package javaExample.warmup1;

public class Close10
{

    public static void main(String[] args)
    {
        System.out.println(close10My(8, 13) );
    }

    // my Solution:-
    public static int close10My(int a, int b) {

        int adiff = Math.abs(10 - a);
        int bdiff = Math.abs(10 - b);

        if (adiff == bdiff)
        {
            return 0;
        }
        else if (adiff < bdiff)
        {
            return a;
        }
        else
        {
            return b;
        }

      }

        // from site
     public int close10(int a, int b) {
            int aDiff = Math.abs(a - 10);
            int bDiff = Math.abs(b - 10);

            if (aDiff < bDiff) {
              return a;
            }
            if (bDiff < aDiff) {
              return b;
            }
            return 0;  // i.e. aDiff == bDiff

            // Solution notes: aDiff/bDiff local vars clean the code up a bit.
            // Could have "else" before the second if and the return 0.
    }



}
