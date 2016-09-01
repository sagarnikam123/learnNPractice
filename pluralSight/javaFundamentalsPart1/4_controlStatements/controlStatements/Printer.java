package controlStatements;

public class Printer {

	private boolean isOn;
	private String modelNumber;
	
	public Printer(boolean isOn, String modelNumber){
		this.isOn = isOn;
		this.modelNumber = modelNumber;
	}
	
	public void print(){
		
		if(isOn){
			System.out.println(modelNumber + " is On!");
		}
		else{
			System.out.println(modelNumber + " is Off!");
		}
	}
	
	public String getModelNumber(){
		return modelNumber;
	}
}
