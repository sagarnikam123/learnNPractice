package printing;

public class MoreMethods8 {

	public boolean isOn;
	public String modelNumber;

	public void print(){
		System.out.println(modelNumber);
	}
	
	public void print(String text){
		System.out.println(text);
	}
	
	public String getModelNumber(){
		return modelNumber;
	}
}

