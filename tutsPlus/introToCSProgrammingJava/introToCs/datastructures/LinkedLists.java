package introToCs.datastructures;

import java.util.LinkedList;
import java.util.ListIterator;

public class LinkedLists {

	public static void main(String[] args) {
		// Working with Linked List

		LinkedList<String> gList = new LinkedList<String>();

		gList.add("Roast Beef");
		gList.add("Cheese");
		gList.add("Honey Wheat Bread");

		// gList.addFirst("Lettuce");
		// gList.addLast("Fruit Juice");

		ListIterator<String> iter = gList.listIterator();

		if(iter.hasNext()){
			iter.next();
			iter.add("Lettuce");

		}

		iter.next();
		iter.remove();

		for(String item : gList ){
			System.out.println(item);
		}

	}

}
