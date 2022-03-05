package printing;

public enum ColorCartridge2 implements ICartridge2
{
	RED("Red"),
	BLUE("Blue"),
	GREEN("Green"),
	YELLOW("Yellow");

	private final String colorText;

	private ColorCartridge2(String colorText){
		this.colorText = colorText;
	}

	@Override
	public String toString()
	{
		return "Color!";
	}

	@Override
	public String getFillPercentage() {
		return "97%";
	}

	@Override
	public String printColor() {
		return colorText;
	}
}
