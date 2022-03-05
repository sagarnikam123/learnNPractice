package runner;

import inheritanceNComposition.IMachine;
import inheritanceNComposition.Printer4;

public class Main4 {

	public static void main(String[] args) {

		IMachine machine = new Printer4(true, "MY PRINTER");
		machine.TurnOn();
	}

}
