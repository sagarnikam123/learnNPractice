package runner;

import printing.ColorCartridge;
import printing.Printer;

public class UsingBuiltInAnnotations {

	public static void main(String[] args)
	{
		Printer<ColorCartridge> printer  = new Printer<ColorCartridge>(true, "MY PRINTER", ColorCartridge.RED);
		
		printer.loadPaper(5);
		printer.printColors();
		
		
	}
	
	
}
