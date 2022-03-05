package printing;

public enum BWCartridge2 implements ICartridge2
{
	BW("Black&White");

	private final String colorText;

	private BWCartridge2(String colorText){
		this.colorText = colorText;
	}

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
		return colorText;
	}
}
