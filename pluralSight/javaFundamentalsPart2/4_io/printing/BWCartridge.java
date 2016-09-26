package printing;

public class BWCartridge implements ICartridge
{
	@Override
	public String toString()
	{
		return "BW!";
	}

	@Override
	public String getFillPercentage() {
		return "50%";
	}

	@Override
	public String printColor() {
		// TODO Auto-generated method stub
		return null;
	}

}
