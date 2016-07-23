package introToCs.io;

import java.util.Scanner;
import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

public class TextFiles {

	public static void main(String[] args){
		// Working with Text Files
		File file = new File("/home/hadoop/workspace/TutsPlus-Java/src/introToCs/io/text.txt");
		
		try{
			PrintWriter out = new PrintWriter(file);
			// Code that will cause an exception
			Scanner in = new Scanner(file);
			
			try{
				out.println("This is the new line 1");
				out.println("This is the new line 2");
				out.println("This is the new line 3");
				out.println("This is the new line 4");
				}finally{
					out.close();
				}
			
			try{
				//Code to read and output the file
				String contents = in.nextLine();
				
				while(in.hasNextLine()){
					contents = contents + "\n" + in.nextLine();
				}
				System.out.println(contents);
			}finally{
				// Code to close the stream
				in.close();
			}
			
		}catch(IOException e){
			//code to handle the exception
			e.printStackTrace();			
		}
	}

}
