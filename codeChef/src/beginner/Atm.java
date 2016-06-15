/*************************************************************************************************************
	
	ATM - solved
	
	Pooja would like to withdraw X $US from an ATM. 
	The cash machine will only accept the transaction if X is a multiple of 5, and 
	Pooja's account balance has enough cash to perform the withdrawal transaction (including bank charges). 
	For each successful withdrawal the bank charges 0.50 $US.

	Calculate Pooja's account balance after an attempted transaction.

	Input
	Positive integer 0 < X <= 2000 - the amount of cash which Pooja wishes to withdraw.
	Nonnegative number 0<= Y <= 2000 with two digits of precision - Pooja's initial account balance.

	Output
	Output the account balance after the attempted transaction, given as a number with two digits of precision. 
	If there is not enough money in the account to complete the transaction, output the current bank balance.

 ***************************************************************************************************************

Example - Successful Transaction
Input:
30 120.00

Output:
89.50

Example - Incorrect Withdrawal Amount (not multiple of 5)
Input:
42 120.00

Output:
120.00

Example - Insufficient Funds
Input:
300 120.00

Output:
120.00

 ****************************************************************************************************************/

package beginner;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;

public class Atm {

	public static void main(String[] args) {

		BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
		String input = null;

		try {
			while ((input = br.readLine()) != null) {

				// parsing input
				String inputSplit[] = input.split(" ");
				int amtWithdrawal = Integer.parseInt(inputSplit[0]);
				double accBalance = Double.parseDouble(inputSplit[1]);

				// checking withdrawal amount (X)
				boolean limitWithdrawal = 0 < amtWithdrawal	&& amtWithdrawal <= 2000;
				boolean multipleOfFive = amtWithdrawal % 5 == 0;

				// checking available balance (Y)
				boolean availBalance = 0 <= accBalance && accBalance <= 2000;
				boolean sufficientBalance = accBalance >= amtWithdrawal + 0.50;

				// check limit on input values
				if (limitWithdrawal && availBalance && multipleOfFive && sufficientBalance) {
					Double remainingBalance = accBalance - (amtWithdrawal + 0.50);
					//System.out.println(remainingBalance);
					System.out.printf("%.2f", remainingBalance);
				} else {
					//System.out.println(accBalance);
					System.out.printf("%.2f", accBalance);
				}

			} // while

			br.close();

		} catch (IOException ioExp) {
			System.out.println(ioExp.getMessage());
		}

	} // main

} // class
