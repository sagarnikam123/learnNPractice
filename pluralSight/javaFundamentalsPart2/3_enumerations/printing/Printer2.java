package printing;

import java.util.HashMap;
import java.util.Map;

public class Printer2<T extends ICartridge2> implements IMachine 
{
	private String modelNumber;
	private PaperTray paperTray = new PaperTray();
	private Machine machine;
	private T cartridge2;
	private Map<Integer, Page> pagesMap = new HashMap<Integer, Page>();
	
	public Printer2(boolean isOn, String modelNumber, T cartridge2)
	{
		machine = new Machine(isOn);
		this.modelNumber = modelNumber;
		this.cartridge2 = cartridge2;
	}
	
	@Override
	public void TurnOn()
	{
		System.out.println("Warming up printer");
		machine.TurnOn();
	}
	
	public <U extends ICartridge2> void printUsingCartridge(U cartridge2, String message)
	{
		System.out.println(cartridge2.toString());
		System.out.println(message);
		System.out.println(cartridge2.toString());
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
		textToPrint += "|||" + cartridge2.printColor() + "|||";
		
		int pageNumber = 1;
						
		while( copies > 0 && !paperTray.isEmpty() )
		{
			pagesMap.put(pageNumber, new Page(textToPrint + ":" + pageNumber));
			
			copies--;
			pageNumber++;
			paperTray.usePage();
		}
		
		if(paperTray.isEmpty())
			System.out.println("Load more paper!");
	}
	
	public void outputPage(int pageNumber)
	{
		System.out.println(pagesMap.get(pageNumber).getText());
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
		return cartridge2;
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
}
