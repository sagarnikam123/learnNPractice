package runner;

import printing.ColorCartridge2;

public class EnumIterator {

	public static void main(String[] args)
	{
		for(ColorCartridge2 colorCartridge2 : ColorCartridge2.values()){
			System.out.println(colorCartridge2.printColor());
		}
	}
}
