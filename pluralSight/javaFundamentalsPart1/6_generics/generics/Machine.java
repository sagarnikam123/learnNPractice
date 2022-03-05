package generics;

public class Machine implements IMachine{

	protected boolean isOn;

	public Machine(boolean isOn){
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
