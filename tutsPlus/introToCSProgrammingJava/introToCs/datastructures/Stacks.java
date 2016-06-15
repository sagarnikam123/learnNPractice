package introToCs.datastructures;

import java.util.Stack;

public class Stacks {

	public static void main(String[] args) {
		// Working with Stacks
		// Last in - First out 
		Stack<String> pez = new Stack<String>();
		pez.push("Candy 1");
		pez.push("Candy 2");
		pez.push("Candy 3");
		pez.push("Candy 4");
		
		String candy4 = pez.pop();
		String candy3 = pez.pop();
		
		System.out.println(candy4);
		System.out.println(candy3);
		System.out.println(pez.peek());
		System.out.println(pez.search("Candy 1"));

	}

}
