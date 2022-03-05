package controlStatements;

public class While7 {

	private boolean isOn;
	private String modelNumber;

	public While7(boolean isOn, String modelNumber){
		this.isOn = isOn;
		this.modelNumber = modelNumber;
	}

	public void print(int copies){

		String onStatus = "";

		if(isOn)
			onStatus = "is On!";
		else
			onStatus = "is Off!";

		String textToPrint = modelNumber + onStatus;

		while(copies > 0){
			System.out.println(textToPrint);
			copies--;
		}

	}

	public String getModelNumber(){
		return modelNumber;
	}
}
