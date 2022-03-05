package printing;

public enum ColorCartridge implements ICartridge
{
	RED,
	BLUE,
	GREEN,
	YELLOW;

	@Override
	public String toString()
	{
		return "Color!";
	}

	@Override
	public String getFillPercentage() {
		return "97%";
	}
}
