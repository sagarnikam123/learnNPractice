package runner;

import generics.BWCartridge;
import generics.ColorCartridge;
import generics.Printer2;

public class Main2 {

	public static void main(String[] args) {

		Printer2<BWCartridge> printer = new Printer2<BWCartridge>(true, "BW PRINTER", new BWCartridge());
		printer.printUsingCartridge(new ColorCartridge(), "Hi!");
		System.out.println(" -- ");
		printer.printUsingCartridge(3, "With Integer!");
		System.out.println(" -- ");
		printer.printUsingCartridge(printer, "With object itself");
	}

}
