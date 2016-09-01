package controlStatements;

public class Main {

	public static void main(String[] args) {

		Printer myPrinter = new Printer(true, "MY PRINTER");
		Printer yourPrinter = new Printer(false, "YOUR PRINTER");
		myPrinter.print();
		yourPrinter.print();
	}

}
