package introToCs.io;

import java.util.Scanner;

public class ScannerClass {

	public static void main(String[] args) {
		// Working with the Scanner Class

		Scanner in = new Scanner(System.in);

		System.out.println("What is your full name?");

		String fullName = in.nextLine();

		System.out.println("What is your age?");

		int age = in.nextInt();

		System.out.println("Your full Name is : "+fullName);

		System.out.println("Your age is: "+ age);

		in.close();

	}

}
