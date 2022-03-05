package runner;

import printing.ColorCartridge;
import printing.Printer2WritingToFile;

public class WritingToFile {

	public static void main(String[] args)
	{
		Printer2WritingToFile<ColorCartridge> printer  = new Printer2WritingToFile<ColorCartridge>(true, "MY PRINTER", ColorCartridge.RED);

		printer.loadPaper(5);
		printer.print(3);
		printer.outputPage(1);

	}


}
