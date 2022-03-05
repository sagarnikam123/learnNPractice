package printing;

import java.util.HashMap;

public class PrinterHashMap<T> implements IMachine
{
	private String modelNumber;
	private PaperTray paperTray = new PaperTray();
	private Machine machine;
	private T cartridge;
	private HashMap<Integer, Page> pagesMap = new HashMap<Integer,Page>();

	public PrinterHashMap(boolean isOn, String modelNumber, T cartridge)
	{
		machine = new Machine(isOn);
		this.modelNumber = modelNumber;
		this.cartridge = cartridge;
	}

	@Override
	public void TurnOn()
	{
		System.out.println("Warming up printer");
		machine.TurnOn();
	}

	public <U extends ICartridge> void printUsingCartridge(U cartridge, String message)
	{
		System.out.println(cartridge.toString());
		System.out.println(message);
		System.out.println(cartridge.toString());
	}


	public void print(int copies)
	{
		//checkCopies(copies);

		String onStatus = "";
		if(machine.isOn())
			onStatus = " is On!";
		else
			onStatus = " is Off!";

		String textToPrint = modelNumber + onStatus;
		int pageNumber = 1;

		while( copies > 0 && !paperTray.isEmpty() )
		{
			//System.out.println(textToPrint);
			pagesMap.put(pageNumber, new Page(textToPrint + " : " + pageNumber) );
			copies--;
			pageNumber++;
			paperTray.usePage();
		}

		if(paperTray.isEmpty())
			System.out.println("Load more paper!");
	}

	public void printColors()
	{
		String[] colors = new String[] { "Red", "Blue", "Green", "Yellow", "Orange" };

		for( String currentColor : colors )
		{
			if("Green".equals(currentColor))
				continue;

			System.out.println(currentColor);
		}

	}

	public String getModelNumber()
	{
		return modelNumber;
	}

	public T getCartridge()
	{
		return cartridge;
	}

	public void loadPaper(int count)
	{
		paperTray.addPaper(count);
	}

	@Override
	public void TurnOff() {
		machine.TurnOff();
	}

	@Override
	public boolean isOn() {
		return machine.isOn();
	}

	public void outputPage(int pageNumber) {
		System.out.println(pagesMap.get(pageNumber).getText());
	}
}
