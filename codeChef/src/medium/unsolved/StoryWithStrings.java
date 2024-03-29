/**

	A Story with Strings

	Lira and her best friend are now ending highschool and soon they both will head separate ways...
	Lira will obviously study Computer Science while her best friend will study Arts... (apparentely,
	opposites attract, alikes repel right?)
	However, as Lira didn't want to lose contact with her, she decided to mix Art and Computer Science one last time and
	amaze her friend with Computer Science, so she could have a geek coding partner.
	To amaze her, she encoded a message in two strings, which she presented to her friend:
	Lira: "So, Mary, as you can see, we have two strings here, yes? We have a first longer string, S1,
	which encodes our common path together, and is represented by some letters which represent our lives so far
	as well all the events we lived together. The second string, S2, will be as long as the first one, or
	possibly shorter and it is here to represent what the future might bring to both of us :)
	It is also only composed of letters, which represent some life events we might still experience together in the future.
	What I would like you to do, is to find out if the future will be just like now, and, for that,
	you need to find a contiguous sequence of letters in both of these two strings.
	Obviously, as I want our friendship to last very, very much, I ask you to find the longest sequence of life events
	we might still experience together and tell me which sequence is it and how long is it :D
	However, if fate doesn't want us to be together, simply tell me the number 0 and we shall both head separate ways forever.
	Turns out, that after Mary solved the problem, she became so interested in CS herself,
	that both she and Lira are now working together at a very reputable software company. :)

	Input
	The input will consist of two strings composed only of the letters a..z, both of which are at most 250.000 characters in length.

	Output
	The output should be as stated.
	If there is a common life event in Mary and Lira's lives, you should output it on a single line and, on another line,
	you should output the length of the event. Otherwise, simply output 0.
	On the case where there are multiple answers, the first common event to be found on the second string,
	should be written to output, followed by its length. See example 3 for details.

	Constraints
	    1 ≤ |S1| ≤ 250000
	    1 ≤ |S2| ≤ 250000
	    1 ≤ |S2| ≤ |S1|
	    The last constraint simply means that S2 will never be larger than S1


*******************************************************************************************************************
Example

Input 1:
adsyufsfdsfdsf
fdyusgfdfyu

Output 1:
fd
2



Input 2:
adsyufsfdsfdsf
bbbbbbbbb

Output 2:
0

Input 3:
abcdef
defabc

Output 3:
def
3

Explanation
Example case 1.The longest life event is "fd" whose length is 2.
Example case 2.The girls will follow separate lives.
Example case 3.On the case where multiple events can happen, Mary will choose the event which is closer to happen in the future, and, as such, answer is "def".
Note: The Mary in this problem, is actually a small tribute to my coder friend Mary Kuchumova, which,
	  hopefully will return to Codechef and get back in touch again. :D Mary, you're missed!

*******************************************************************************************************************/

package medium.unsolved;

public class StoryWithStrings {

	public static void main(String[] args) {

	}

}
