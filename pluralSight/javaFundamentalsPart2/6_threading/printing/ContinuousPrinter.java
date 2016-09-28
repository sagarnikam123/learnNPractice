package printing;

public class ContinuousPrinter extends Thread {

	private Printer<ICartridge> printer = new Printer<ICartridge>(true,"IPrint", ColorCartridge.BLUE );
	
	@Override
	public void run() {
		super.run();
		
		for(int i=0; i< 100;i++){
			printer.printUsingCartridge(ColorCartridge.BLUE, "In Thread" + i );
		}
	}

}
