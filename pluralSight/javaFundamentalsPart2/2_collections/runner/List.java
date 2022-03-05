package runner;

import printing.BWCartridge;
import printing.PrinterList;

public class List {

	public static void main(String[] args) {
		PrinterList<BWCartridge> printer = new PrinterList<BWCartridge>(true, "My PRINTER", new BWCartridge());
		printer.loadPaper(10);
		printer.print(5);
		printer.outputPages();

	}

}
