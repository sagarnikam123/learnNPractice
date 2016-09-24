package runner;

import java.util.HashSet;

public class Set {

	public static void main(String[] args) {
		
		HashSet<Integer> mySet = new HashSet<Integer>();
		mySet.add(1);
		mySet.add(2);
		mySet.add(3);
		mySet.add(1);
		
		System.out.println(mySet.size());

	}

}
