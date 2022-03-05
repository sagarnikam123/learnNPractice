package runner;

import inheritanceNComposition.Printer;

public class Main {

	public static void main(String[] args) {

		Printer myPrinter = new Printer(true, "MY PRINTER");
		myPrinter.print(1);
		myPrinter.TurnOff();
		myPrinter.print(1);

	}

}
