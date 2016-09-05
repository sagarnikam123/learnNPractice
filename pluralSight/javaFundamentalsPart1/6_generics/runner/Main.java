package runner;

import generics.BWCartridge;
import generics.ColorCartridge;
import generics.Printer;

public class Main {

	public static void main(String[] args) {

		Printer<ColorCartridge> printer = new Printer<ColorCartridge>(true, "MY PRINTER", new ColorCartridge());
		printer.print(1);
		
		Printer<BWCartridge> printer2 = new Printer<BWCartridge>(true, "BW PRINTER", new BWCartridge());
		printer2.print(1);
	}

}
