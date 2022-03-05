package inheritanceNComposition;

public class Printer4 implements IMachine {

	private String modelNumber;
	private PaperTray paperTray = new PaperTray();
	private Machine3 machine;

	public Printer4(boolean isOn, String modelNumber){
		machine = new Machine3(isOn);
		this.modelNumber = modelNumber;
	}

	@Override
	public void TurnOn(){
		System.out.println("Warming up printer");
		machine.TurnOn();
	}

	public void print(int copies){

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
