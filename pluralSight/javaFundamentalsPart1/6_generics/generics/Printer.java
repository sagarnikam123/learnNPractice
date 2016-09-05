package generics;


public class Printer<T> implements IMachine {

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
	
	public void print(int copies){
		
		System.out.println(cartridge.toString());
		
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
