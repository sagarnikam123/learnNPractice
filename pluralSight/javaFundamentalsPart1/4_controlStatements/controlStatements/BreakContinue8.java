package controlStatements;

public class BreakContinue8 {

	@SuppressWarnings("unused")
	private boolean isOn;
	private String modelNumber;
	
	public BreakContinue8(boolean isOn, String modelNumber){
		this.isOn = isOn;
		this.modelNumber = modelNumber;
	}
	
	public void printColors(){
		
		String[] colors = new String[]{"Red", "Blue", "Green", "Yellow", "Orange"};
		
		for(String currentColor : colors){
			
			if("Green".equals(currentColor))
				break;
			System.out.println(currentColor);
		} 
	}
	
	public void printColors2(){
		
		String[] colors = new String[]{"Red", "Blue", "Green", "Yellow", "Orange"};
		
		for(String currentColor : colors){
			
			if("Green".equals(currentColor))
				continue;
			System.out.println(currentColor);
		} 
	}
	
	public String getModelNumber(){
		return modelNumber;
	}
}
