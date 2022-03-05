package introToCs.creditcard;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

public class CreditCardTest {

	private CreditCard card1;
	private CreditCard card2;

	@Before
	public void setUp() throws Exception {
		card1 = new CreditCard("Andrew Perkins");
		card2 = new CreditCard("John Doe",3000);
	}

	@Test
	public void testCreditCardString() {
		assertEquals("Andrew Perkins", card1.getCardHolder());
		assertEquals(500 ,card1.getCreditLimit() );
		assertEquals(0, card1.getBalance() );
	}

	@Test
	public void testCreditCardStringInt() {
		assertEquals("John Doe", card2.getCardHolder() );
		assertEquals(3000, card2.getCreditLimit() );
		assertEquals(0, card2.getBalance() );
	}

	@Test
	public void testMakePurchaseNoFee() {
		card1.makePurchase(45);
		assertEquals(45, card1.getBalance() );
	}

	@Test
	public void testMakePurchaseWithFee() {
		card1.makePurchase(700);
		assertEquals(750, card1.getBalance() );
	}


	@Test
	public void testMakePayments() {
		card2.makePurchase(100);
		card2.makePayments(25);
		assertEquals(75,card2.getBalance() );
	}

	@Test
	public void testCalculateRewardPoints() {
		card2.makePurchase(100);
		card2.makePurchase(100);
		card2.makePurchase(100);
		card2.makePurchase(100);
		assertEquals(400,card2.calculateRewardPoints() );
	}

}
