package runner;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import printing.ColorCartridge;
import printing.ContinuousPrinter;
import printing.Printer;
import printing.PrintingDevice;

public class CreatingAThread {

	public static void main(String[] args) throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException
	{
		ContinuousPrinter cp = new ContinuousPrinter();
		cp.start();
		
		
		ContinuousPrinter cp2 = new ContinuousPrinter();
		cp2.start();
		
		
		for(int i=0;i<100;i++){
			System.out.println("Main thread " + i);
		}
	}
	
	
}
