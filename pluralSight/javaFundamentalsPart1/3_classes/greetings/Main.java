package greetings;

import printing.Printer;

public class Main {

	public static void main(String[] args) {

		Printer myPrinter = new Printer();
		myPrinter.isOn = false;
		myPrinter.modelNumber = "ABCD";

		Printer yourPrinter = new Printer();
		yourPrinter.isOn = true;
		yourPrinter.modelNumber = "FGH";

		System.out.println(myPrinter.modelNumber);
		System.out.println(yourPrinter.modelNumber);

	}

}
