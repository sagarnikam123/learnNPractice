package greetings;

import printing.MoreMethods8;
import printing.Printer;

public class Main3 {

	public static void main(String[] args) {
		
		MoreMethods8 myPrinter = new MoreMethods8();
		myPrinter.isOn = false;
		myPrinter.modelNumber = "ABCD";
		
		Printer yourPrinter = new Printer();
		yourPrinter.isOn = true;
		yourPrinter.modelNumber = "FGH";
		
		myPrinter.print("Hello Printer");
		
		String theModelNumber = myPrinter.getModelNumber();
		System.out.println(theModelNumber);
		
	}

}
