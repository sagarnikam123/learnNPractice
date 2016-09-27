package runner;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

import printing.ColorCartridge;
import printing.PrinterUsingACustomAnnotation;
import printing.PrintingDevice;

public class UsingCustomAnnotation {

	public static void main(String[] args) throws NoSuchMethodException, SecurityException, IllegalAccessException, IllegalArgumentException, InvocationTargetException
	{
		PrinterUsingACustomAnnotation<ColorCartridge> printer  = new PrinterUsingACustomAnnotation<ColorCartridge>(true, "MY PRINTER", ColorCartridge.RED);
		
		printer.loadPaper(5);
		
		PrintingDevice annotation = printer.getClass().getAnnotation(PrintingDevice.class);
		Method printMethod = printer.getClass().getMethod(annotation.defaultPrintingMethod(), int.class);
		printMethod.invoke(printer, annotation.defaultNumberOfCopies());
		
		printer.outputPage(4);
		
		
	}
	
	
}
