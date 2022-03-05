package runner;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

import printing.ColorCartridge;
import printing.Printer2WritingToFile;

public class FileManipulation {

	public static void main(String[] args)
	{
		Printer2WritingToFile<ColorCartridge> printer  = new Printer2WritingToFile<ColorCartridge>(true, "MY PRINTER", ColorCartridge.RED);

		printer.loadPaper(5);
		printer.print(3);
		printer.outputPage(2);

		Path path = Paths.get("newFile");

		//creating a file
		try {
			Files.createFile(path);
		} catch (IOException e) {
			e.printStackTrace();
		}

		// deleting a file
//		try {
//			Files.deleteIfExists(path);
//		} catch (IOException e) {
//			e.printStackTrace();
//		}

		//moving a file
		try {
			Files.move(path, Paths.get("movedFile"));
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
