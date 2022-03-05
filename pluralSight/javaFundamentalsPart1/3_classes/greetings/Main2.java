package greetings;

import printing.Methods7;
import printing.Printer;

public class Main2 {

	public static void main(String[] args) {

		Methods7 myPrinter = new Methods7();
		myPrinter.isOn = false;
		myPrinter.modelNumber = "ABCD";

		Printer yourPrinter = new Printer();
		yourPrinter.isOn = true;
		yourPrinter.modelNumber = "FGH";

		myPrinter.print();

	}

}
