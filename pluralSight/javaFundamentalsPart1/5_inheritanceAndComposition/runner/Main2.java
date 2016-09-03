package runner;

import inheritanceNComposition.Printer2;

public class Main2 {

	public static void main(String[] args) {
		
		Printer2 myPrinter = new Printer2(true, "MY PRINTER");
		
		myPrinter.loadPaper(3);
		myPrinter.print(1);

	}

}
