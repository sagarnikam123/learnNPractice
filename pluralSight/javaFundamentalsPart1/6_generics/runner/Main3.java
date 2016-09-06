package runner;

import generics2.BWCartridge;
import generics2.ColorCartridge;
import generics2.Printer;

public class Main3 {

	public static void main(String[] args) {

		Printer<BWCartridge> printer = new Printer<BWCartridge>(true, "BW PRINTER ", new BWCartridge());
		printer.printUsingCartridge(new BWCartridge(), "Hi!");
		printer.printUsingCartridge(new ColorCartridge(), "Hi!");
		printer.print(1);
	}

}
