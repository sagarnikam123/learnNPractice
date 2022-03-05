package printing;

import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

@PrintingDevice(defaultPrintMethod = "print", defaultNumberOfCopies = 5)
public class Printer<T extends ICartridge> implements IMachine
{
	private String modelNumber;
	private PaperTray paperTray = new PaperTray();
	private Machine machine;
	private T cartridge;
	//private List<Page> pages = new ArrayList<Page>();
	private Map<Integer, Page> pagesMap = new HashMap<Integer, Page>();

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
		//System.out.println(cartridge.toString());
		System.out.println(message);
		//System.out.println(cartridge.toString());
	}


	public void print(int copies)
	{
		@SuppressWarnings("unused")
		String onStatus = "";
		if(machine.isOn())
			onStatus = " is On!";
		else
			onStatus = " is Off!";

		String textToPrint = getTextFromFile();
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

	private String getTextFromFile()
	{
		FileReader reader = null;
		BufferedReader bReader = null;
		CapitalizationReader capReader = null;


		String allText = "";
		try
		{
			reader = new FileReader("C:\\temp\\test.txt");
			bReader = new BufferedReader(reader);
			capReader = new CapitalizationReader(bReader);

			String line;
			while(( line = capReader.readLine() ) != null)
			{
				allText += line + "\n";
			}

			return allText;


		} catch (FileNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			if(capReader != null)
				try {
					capReader.close();
				} catch (IOException e)
				{
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
		}

		return "";
	}

	public void outputPage(int pageNumber)
	{
		PrintWriter writer = null;

		try
		{
			writer = new PrintWriter(new FileWriter("C:\\temp\\outputpage.txt"));

			writer.println(pagesMap.get(pageNumber).getText());
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		finally
		{
			if(writer != null)
				writer.close();
		}


		//System.out.println(pagesMap.get(pageNumber).getText());
	}

	@SuppressWarnings("unused")
	private void checkCopies(int copies) {
		if(copies < 0)
			throw new IllegalArgumentException("Can't print less than 0 copies.");
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
}
