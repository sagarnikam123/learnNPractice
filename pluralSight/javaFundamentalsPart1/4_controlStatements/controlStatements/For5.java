package controlStatements;

public class For5 {

	private boolean isOn;
	private String modelNumber;

	public For5(boolean isOn, String modelNumber){
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

		for(int i = 0; i < copies; i++){
			System.out.println(textToPrint);
		}

	}

	public String getModelNumber(){
		return modelNumber;
	}
}
