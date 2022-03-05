package controlStatements;

public class ForEach6 {

	@SuppressWarnings("unused")
	private boolean isOn;
	private String modelNumber;

	public ForEach6(boolean isOn, String modelNumber){
		this.isOn = isOn;
		this.modelNumber = modelNumber;
	}

	public void printColors(){

		String[] colors = new String[]{"Red", "Green", "Blue", "Yellow", "Orange"};

		for(String currentColor : colors){
			System.out.println(currentColor);
		}
	}

	public String getModelNumber(){
		return modelNumber;
	}
}
