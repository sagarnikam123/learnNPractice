package greetings;

import printing.Constructors9;

public class Main4 {

	public static void main(String[] args) {
		
		Constructors9 myPrinter = new Constructors9(true, "MY PRINTER");
		myPrinter.print();
		
		Constructors9 yourPrinter = new Constructors9(false, "YOUR PRINTER");
		yourPrinter.print();
		
	}

}
