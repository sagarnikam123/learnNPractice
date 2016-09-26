package runner;

import printing.ColorCartridge;
import printing.Printer;

public class ReadingAFile {

	public static void main(String[] args)
	{
		Printer<ColorCartridge> printer  = new Printer<ColorCartridge>(true, "MY PRINTER", ColorCartridge.RED);
		
		printer.loadPaper(5);
		printer.print(3);
		printer.outputPage(2);
		
	}
	
	
}
