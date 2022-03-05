package inheritanceNComposition;

public class Printer extends Machine {

	private String modelNumber;

	public Printer(boolean isOn, String modelNumber){
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

		while( copies > 0 ){
			System.out.println(textToPrint);
			copies--;
		}

	}

}
