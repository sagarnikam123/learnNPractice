package introToCs.inheritanceandpoly;

public class MoneyCardTester {

	public static void main(String[] args) {
		
		System.out.println("The GiftCard Class:");
		GiftCard gc =new GiftCard(150);
		gc.makePurchase(50);
		System.out.println("Balance: "+ gc.getBalance());
		System.out.println("Acceptablity: "+ gc.getAcceptability());
		
		System.out.println();
		
		System.out.println("The DebitCard Class:");
		DebitCard dc = new DebitCard(500);
		dc.makePurchase(100);
		dc.deposit(25);
		System.out.println("Balance: "+dc.getBalance());
		System.out.println("Acceptablity: "+ dc.getAcceptability());
		System.out.println();
		
		System.out.println("The CreditCard Class:");
		CreditCard cc = new CreditCard(1500);
		cc.makePurchase(300);
		cc.makePayment(75);
		System.out.println("Balance: "+cc.getBalance());
		System.out.println("Available Credit: "+ cc.getAvailableCredit());
		System.out.println("Acceptablity: "+ cc.getAcceptability());
	}

}
