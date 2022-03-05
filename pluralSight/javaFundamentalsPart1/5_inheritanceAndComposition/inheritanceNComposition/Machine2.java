package inheritanceNComposition;

public class Machine2 {

	protected boolean isOn;

	public Machine2(boolean isOn){
		this.isOn = isOn;
	}

	public void TurnOn(){
		isOn = true;
		System.out.println("Machine2 is on!");
	}

	public void TurnOff(){
		isOn = false;
	}
}
