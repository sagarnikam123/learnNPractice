package runner;

import java.util.List;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

public class CombiningCollections {

	public static void main(String[] args) {

		Map<String,List<Integer>> testScores = new HashMap<String, List<Integer>>();

		List<Integer> joeScores = new ArrayList<Integer>();
		joeScores.add(80);
		joeScores.add(60);
		joeScores.add(97);
		testScores.put("Joe",joeScores);

		List<Integer> amyScores = new ArrayList<Integer>();
		amyScores.add(82);
		amyScores.add(98);
		amyScores.add(90);
		amyScores.add(99);
		testScores.put("Amy", amyScores);

		List<Integer> fredScores = new ArrayList<Integer>();
		fredScores.add(50);
		fredScores.add(60);
		testScores.put("Fred", fredScores);

		//check
		printScores("Fred", testScores);
		printScores("Amy", testScores);
		printScores("Joe", testScores);
	}

	public static void printScores(String studentName, Map<String, List<Integer>> scoresMap ){

		List<Integer> scores = scoresMap.get(studentName);

		for(int score : scores){
			System.out.println(score);
		}
	}

}
