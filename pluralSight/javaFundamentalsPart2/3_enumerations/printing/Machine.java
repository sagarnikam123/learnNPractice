package printing;

public class Machine implements IMachine
{
	protected boolean isOn;
	
	public Machine(boolean isOn)
	{
		this.isOn = isOn;
	}
	
	public void TurnOn()
	{
		isOn = true;
		System.out.println("Machine is on!");
	}
	
	public void TurnOff()
	{
		isOn = false;
		System.out.println("Machine is off!");
	}

	@Override
	public boolean isOn() {
		return isOn;
	}
}
