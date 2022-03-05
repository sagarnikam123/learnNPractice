package runner;

import java.io.File;
import java.io.IOException;

public class CheckedDemoMain2 {

	public static void main(String[] args) {

		File file = new File("testFile");
		try {
			file.createNewFile();
		} catch (IOException e) {
			e.printStackTrace();
		}

	}

}
