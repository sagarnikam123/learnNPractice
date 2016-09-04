package runner;

import inheritanceNComposition.Machine2;
import inheritanceNComposition.Printer3;

public class Main3 {

	public static void main(String[] args) {
		
		Machine2 machine = new Printer3(true, "MY PRINTER");
		Machine2 machine2 = new Machine2(false);
		
		machine.TurnOn();
		machine2.TurnOn();

	}

}
