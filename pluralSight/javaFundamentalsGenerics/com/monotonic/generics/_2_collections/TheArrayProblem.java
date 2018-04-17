package com.monotonic.generics._2_collections;

import java.util.Arrays;

public class TheArrayProblem {

	public static void main(String[] args) {
		
		Person donDraper = new Person("Don Draper", 89);
		Person peggyOlson = new Person("Peggy Olson", 65);
		
		Person[] madMen = {donDraper, peggyOlson};
		System.out.println(Arrays.toString(madMen));
		
		Person  bertCooper = new Person("Bert Cooper", 100);
		// Exception in thread "main" java.lang.ArrayIndexOutOfBoundsException: 2
		//madMen[2] = bertCooper;
		//System.out.println(Arrays.toString(madMen));
		
		madMen = add(bertCooper, madMen);

	}

	private static Person[] add(final Person person, final Person[] array) {
		int length = array.length;
		Person[] newArray = Arrays.copyOf(array, length + 1);
		newArray[length] = person;
		return newArray;
	}

}
