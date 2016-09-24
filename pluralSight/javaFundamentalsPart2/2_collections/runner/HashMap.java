package runner;

import printing.BWCartridge;
import printing.PrinterHashMap;

public class HashMap {

	public static void main(String[] args) {
		PrinterHashMap<BWCartridge> printer = new PrinterHashMap<BWCartridge>(true, "My PRINTER", new BWCartridge());
		printer.loadPaper(10);
		printer.print(5);
		
		printer.outputPage(2);
		printer.outputPage(3);
		
		
	}

}
