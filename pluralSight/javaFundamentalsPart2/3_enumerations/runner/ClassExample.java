package runner;

import printing.ColorCartridge2;
import printing.Printer2;

public class ClassExample {

	public static void main(String[] args)
	{
		Printer2<ColorCartridge2> printer  = new Printer2<ColorCartridge2>(true, "MY PRINTER", ColorCartridge2.RED);

		printer.loadPaper(5);
		printer.print(3);
		printer.outputPage(2);
	}
}
