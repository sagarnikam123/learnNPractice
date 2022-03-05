package controlStatements;

public class Printer2 {

	private boolean isOn;
	private String modelNumber;

	public Printer2(boolean isOn, String modelNumber){
		this.isOn = isOn;
		this.modelNumber = modelNumber;
	}

	public void print(int copies){

		switch(copies){
		case 0:
			break;
		case 1:
			if(isOn){
				System.out.println(modelNumber + " is On!");
			}
			else{
				System.out.println(modelNumber + " is Off!");
			}
			break;
		case 2:
			if(isOn){
				System.out.println(modelNumber + " is On!");
				System.out.println(modelNumber + " is On!");
			}
			else{
				System.out.println(modelNumber + " is Off!");
				System.out.println(modelNumber + " is Off!");
			}
			break;
		default:
			System.out.println("Number of copies is not supported!");
		}

	}

	public String getModelNumber(){
		return modelNumber;
	}
}
