package runner;

import generics2.BWCartridge;
import generics2.ColorCartridge;
import generics2.ICartridge;
import generics2.Printer2;

public class Main4 {

	public static void main(String[] args) {

		Printer2<BWCartridge> printer = new Printer2<BWCartridge>(true, "BW PRINTER ", new BWCartridge());
		Printer2<ColorCartridge> printer2 = new Printer2<ColorCartridge>(true, "Color PRINTER ", new ColorCartridge());
		printOne(printer);
		printOne(printer2);
	}
	
	public static void printOne(Printer2<? extends ICartridge> printer){
		String fillPercentage = printer.getCartridge().getFillPercentage();
		System.out.println(fillPercentage);
	}

}
