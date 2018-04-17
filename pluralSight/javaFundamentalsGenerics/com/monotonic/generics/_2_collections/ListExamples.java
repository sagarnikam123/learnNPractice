package com.monotonic.generics._2_collections;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class ListExamples {

	public static void main(String[] args) {

		Person donDraper = new Person("Don Draper", 89);
		Person peggyOlson = new Person("Peggy Olson", 65);

		// <> diamond operator - Java-7	
		List<Person> madMen = new ArrayList<Person>();
		madMen.add(donDraper);
		madMen.add(peggyOlson);
		
		System.out.println(madMen);
		
		// Lists auto-resize, with generic add method
		madMen.add(new Person("Bert Cooper", 100));
		
		//Compile Error:
		// The method add(Person) in the type List<Person> is not applicable for the arguments (Object). 
		//madMen.add(new Object());
		
		System.out.println(madMen);
		
		// we can query for size
		System.out.println(madMen.size());
		
		// Getting a person
		final Person personGet = madMen.get(2);
		System.out.println(personGet);
		
		//iterating over list
		final Iterator<Person> iterator = madMen.iterator();
		while(iterator.hasNext()){
			final Person personIterator = iterator.next();
			System.out.println(personIterator);
		}
		
		// List have order, we retrieve elements by index
		for(int i = 0; i< madMen.size(); i++){
			
			// Generic get method
			Person person = madMen.get(i);
			System.out.println(person);
		}
		
		// can loop over them with a for loop
		for (Person character : madMen){
			System.out.println(character);
		}
		
		// Can still add duplicates though
		madMen.add(peggyOlson);
	}

}
