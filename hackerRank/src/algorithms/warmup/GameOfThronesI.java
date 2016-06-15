/*

	Game of Thrones - I - Solved

	King Robert has 7 kingdoms under his rule. He finds out from a raven that the Dothraki are soon going to wage a war
	against him. But, he knows the Dothraki need to cross the narrow river to enter his dynasty. 
	There is only one bridge that connects both sides of the river which is sealed by a huge door.
	door
	The king wants to lock the door so that the Dothraki can't enter. But, to lock the door he needs a key that is 
	an anagram of a certain palindrome string. The king has a string composed of lowercase English letters.
	Help him figure out if any anagram of the string can be a palindrome or not.
	
	Input Format
	A single line which contains the input string
	
	Constraints
	1<=length of string <= 10^5
	Each character of the string is a lowercase English letter.
	
	Output Format
	A single line which contains YES or NO in uppercase.
***********************************************************************************************************************
Sample Input : 01
aaabbbb

Sample Output : 01
YES

Explanation - A palindrome permutation of the given string is bbaaabb.

Sample Input : 02
cdefghmnopqrstuvw

Sample Output : 0267hjjq    
NO

Explanation - You can verify that the given string has no palindrome permutation.

Sample Input : 03
cdcdcdcdeeeef

Sample Output : 03
YES

Explanation - A palindrome permutation of the given string is ddcceefeeccdd .
**********************************************************************************************************************/
package algorithms.warmup;

import java.util.HashMap;
import java.util.Scanner;

public class GameOfThronesI
{

    public static void main(String[] args)
    {
        Scanner scn = new Scanner(System.in);

        String input = scn.nextLine();
        // System.out.println(input);

        HashMap<Character, Integer> letterCount = new HashMap<Character, Integer>();

        // for each letter
        for (int i = 0; i < input.length(); i++)
        {
            Character c = input.charAt(i);

            // add as new or increment for old
            if (letterCount.containsKey(c))
            {
                letterCount.put(c, letterCount.get(c) + 1);
            }
            else
            {
                letterCount.put(c, 1);
            }
            // System.out.println(c);
        }// for

        int noOfOdd = 0;
        // checking for odd number of characters
        for (Integer singleEntry : letterCount.values())
        {
            if (singleEntry % 2 != 0)
            {
                noOfOdd += 1;
            }
        }

        // System.out.println("No of Odd - "+noOfOdd);
        // System.out.println("HM size - "+letterCount.size());

        // checking for palindromeness
        if (noOfOdd > 1 || letterCount.size() == noOfOdd)
        {
            System.out.println("NO");
        }
        else
        {
            System.out.println("YES");
        }
        
        scn.close();

    }
}
