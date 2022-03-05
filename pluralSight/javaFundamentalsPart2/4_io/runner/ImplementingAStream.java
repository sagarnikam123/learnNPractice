package runner;

import printing.ColorCartridge;
import printing.Printer3ImplementStream;

public class ImplementingAStream {

	public static void main(String[] args)
	{
		Printer3ImplementStream<ColorCartridge> printer  = new Printer3ImplementStream<ColorCartridge>(true, "MY PRINTER", ColorCartridge.RED);

		printer.loadPaper(5);
		printer.print(3);
		printer.outputPage(1);

	}


}
