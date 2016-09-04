package inheritanceNComposition;

public class Machine3 implements IMachine{

	protected boolean isOn;
	
	public Machine3(boolean isOn){
		this.isOn = isOn;
	}
	
	public void TurnOn(){
		isOn = true;
		System.out.println("Machine3 is on!");
	}
	
	public void TurnOff(){
		isOn = false;
	}

	@Override
	public boolean isOn() {
		return isOn;
	}
}
