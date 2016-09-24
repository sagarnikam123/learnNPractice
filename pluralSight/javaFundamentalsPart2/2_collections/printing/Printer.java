package printing;

import java.util.ArrayList;
import java.util.List;

public class Printer<T> implements IMachine 
{
	private String modelNumber;
	private PaperTray paperTray = new PaperTray();
	private Machine machine;
	private T cartridge;
	private List<Page> pages = new ArrayList<Page>();
	
	public Printer(boolean isOn, String modelNumber, T cartridge)
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
						
		while( copies > 0 && !paperTray.isEmpty() )
		{
			//System.out.println(textToPrint);
			pages.add(new Page(textToPrint));
			copies--;
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

	public void outputPages() {
		for(Page currentPage : pages){
			System.out.println(currentPage.getText());
		}
		
	}
}