package printing;

public class TryNCatch {

	private boolean isOn;
	private String modelNumber;

	public TryNCatch(boolean isOn, String modelNumber){
		this.isOn = isOn;
		this.modelNumber = modelNumber;
	}

	public void print(int copies){

		checkCopies(copies);

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

	private void checkCopies(int copies) {
		if(copies < 0){
			throw new IllegalArgumentException("Can't print less than 0 copies.");
		}
	}

	public String getModelNumber(){
		return modelNumber;
	}
}
