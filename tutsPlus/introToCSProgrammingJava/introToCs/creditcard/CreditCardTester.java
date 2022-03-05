package introToCs.creditcard;

import java.util.ArrayList;

public class CreditCardTester {

	public static void main(String[] args) {

		// Collection of CreditCards
		ArrayList<CreditCard> cards = new ArrayList<CreditCard>();


		// Our CreditCard Objects
		CreditCard card1 = new CreditCard("Andrew Perkins", 2500);
		CreditCard card2 = new CreditCard("John Doe", 1400);
		CreditCard card3 = new CreditCard("Mery Doe", 750);

		// Credit Card Purchases
		card1.makePurchase(1000);
		card1.makePurchase(1500);

		card2.makePurchase(200);
		card2.makePurchase(400);
		card2.makePurchase(150);

		card3.makePurchase(900);

		// Credit Card Payments
		card1.makePayments(50);
		card2.makePayments(25);
		card1.makePayments(75);

		// Add CreditCard to cards ArrayList
		cards.add(card1);
		cards.add(card2);
		cards.add(card3);

		// Printing our CreditCard information
		for(CreditCard card : cards){
			System.out.println("The Cardholder is : " + card.getCardHolder());
			System.out.println("Total Credit Limit  : " + card.getCreditLimit());
			System.out.println("Total Balance : " + card.getBalance());
			System.out.println("Total reward points : " + card.calculateRewardPoints());
			System.out.println("------------------------------------");

		}

		/*System.out.println(card.getCardHolder());
		System.out.println(card.getCreditLimit());
		card.makePurchase(1500);
		card.makePayments(200);
		card.makePurchase(1000);
		System.out.println(card.getBalance());
		System.out.println(card.calculateRewardPoints());

		card.makePurchase(300);
		System.out.println(card.getBalance());
		System.out.println(card.calculateRewardPoints());*/


	}

}
