package runner;

import java.util.LinkedList;

public class Queue {

	public static void main(String[] args) {

		LinkedList<String> myQueue = new LinkedList<String>();

		myQueue.offer("a");
		myQueue.offer("b");
		myQueue.offer("c");

		while(myQueue.peek() != null){
			System.out.println(myQueue.poll());
		}

	}

}
