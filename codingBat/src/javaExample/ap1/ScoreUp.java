/**************************************************************************************************

    scoreUp - solved

    The "key" array is an array containing the correct answers to an exam, like {"a", "a", "b", "b"}.
    the "answers" array contains a student's answers, with "?" representing a question left blank.
    The two arrays are not empty and are the same length. Return the score for this array of answers,
    giving +4 for each correct answer, -1 for each incorrect answer, and +0 for each blank answer.
***************************************************************************************************
scoreUp({"a", "a", "b", "b"}, {"a", "c", "b", "c"}) → 6
scoreUp({"a", "a", "b", "b"}, {"a", "a", "b", "c"}) → 11
scoreUp({"a", "a", "b", "b"}, {"a", "a", "b", "b"}) → 16
scoreUp({"a", "a", "b", "b"}, {"?", "c", "b", "?"}) → 3-
scoreUp({"a", "a", "b", "b"}, {"?", "c", "?", "?"}) → -1-
scoreUp({"a", "a", "b", "b"}, {"c", "?", "b", "b"}) → 7-
scoreUp({"a", "a", "b", "b"}, {"c", "?", "b", "?"}) → 3-
scoreUp({"a", "b", "c"}, {"a", "c", "b"}) → 2
scoreUp({"a", "a", "b", "b", "c", "c"}, {"a", "c", "a", "c", "a", "c"}) → 4
scoreUp({"a", "a", "b", "b", "c", "c"}, {"a", "c", "?", "?", "a", "c"}) → 6-
scoreUp({"a", "a", "b", "b", "c", "c"}, {"a", "c", "?", "?", "c", "c"}) → 11-
scoreUp({"a", "b", "c"}, {"a", "b", "c"}) → 12
**************************************************************************************************/
package javaExample.ap1;

public class ScoreUp
{

    public static void main(String[] args)
    {
    	String kinderGarten [] = {"a", "a", "b", "b"};
    	String allahabad [] = {"?", "c", "?", "?"};
    	System.out.println(scoreUp(kinderGarten,allahabad));
    }

    public static int scoreUp(String[] key, String[] answers) {

    	int marks = 0;
    	for(int i=0;i<key.length;i++){
    		if(answers[i]=="?"){
    			marks += 0;
    		}else if(!key[i].equals(answers[i])){
    			marks -= 1;
    		}else if(key[i].equals(answers[i])){
    			marks += 4;
    		}
    	}
    	return marks;
    }

}
