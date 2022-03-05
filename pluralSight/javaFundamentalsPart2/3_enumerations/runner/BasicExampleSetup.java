package runner;

import printing.ColorCartridge;
import printing.Printer;

public class BasicExampleSetup {

	public static void main(String[] args)
	{
		Printer<ColorCartridge> printer  = new Printer<ColorCartridge>(true, "MY PRINTER", ColorCartridge.RED);

		switch(printer.getCartridge()){

			case BLUE :
				System.out.println("Blue !");
				break;
			case RED :
				System.out.println("Red !");
				break;
			case GREEN :
				System.out.println("Green !");
				break;
			case YELLOW :
				System.out.println("Yellow !");
				break;
		}
	}
}
