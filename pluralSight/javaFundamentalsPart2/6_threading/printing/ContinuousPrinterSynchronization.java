package printing;

public class ContinuousPrinterSynchronization implements Runnable {

	private PrinterSynchronization<ICartridge> printer = new PrinterSynchronization<ICartridge>(true,"IPrint", ColorCartridge.BLUE );

	@Override
	public void run() {
		for(int i=0; i< 100;i++){
			printer.printUsingCartridge(ColorCartridge.BLUE, "In Thread" + i );
		}
	}

}
