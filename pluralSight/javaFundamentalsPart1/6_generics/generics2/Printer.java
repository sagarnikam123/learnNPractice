package generics2;


public class Printer<T extends ICartridge> implements IMachine {

	private String modelNumber;
	private PaperTray paperTray = new PaperTray();
	private Machine machine;
	private T cartridge;
	
	public Printer(boolean isOn, String modelNumber, T cartridge){
		machine = new Machine(isOn);
		this.modelNumber = modelNumber;
		this.cartridge = cartridge;
	}
	
	@Override
	public void TurnOn(){
		System.out.println("Warming up printer");
		machine.TurnOn();
	}
	
	public <U extends ICartridge> void printUsingCartridge(U cartridge, String message){
		System.out.println(cartridge.toString());
		System.out.println(message);
		System.out.println(cartridge.toString());
	}
	
	public void print(int copies){
		
		System.out.println(cartridge.getFillPercentage());
		
		String onStatus = "";
		
		if(machine.isOn())
			onStatus = "is On!";
		else
			onStatus = "is Off!";
		
		String textToPrint = modelNumber + onStatus;
		
		while( copies > 0 && !paperTray.isEmpty() ){
			System.out.println(textToPrint);
			copies--;
			paperTray.usePage();
		}
		
		if(paperTray.isEmpty()){
			System.out.println("Load more paper!");
		}
			
	}

	public void loadPaper(int count) {
		paperTray.addPaper(count);
		
	}

	@Override
	public void TurnOff() {
		machine.TurnOff();
	}

	@Override
	public boolean isOn() {
		return machine.isOn;
	}

}
