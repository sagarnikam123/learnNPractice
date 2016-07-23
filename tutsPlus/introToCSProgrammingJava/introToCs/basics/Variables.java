package introToCs.basics;

public class Variables {

	public static void main(String[] args) {
		
		// Working with Variables
		String message = "Variables are Awesome!";
		System.out.println(message);
		
		// Reassigning Variables
		String myMessage = "Variables are Fantastic !";
		myMessage = "Variables are Super!";
		System.out.println(myMessage );
		
		// Number Variables
		int year = 2013;
		double pi = 3.14;
		System.out.println(year);
		System.out.println(pi);
		
		// Variables within other variables
		int five = 5;
		int ten = 10;
		int sum = five + ten;
		System.out.println(sum);

	}

}

