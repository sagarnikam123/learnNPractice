package inheritanceNComposition;

public class Printer2 extends Machine {

	private String modelNumber;
	private PaperTray paperTray = new PaperTray();
	
	public Printer2(boolean isOn, String modelNumber){
		super(isOn);
		this.modelNumber = modelNumber;
	}
	
	public void print(int copies){
		
		String onStatus = "";
		
		if(isOn)
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

}
