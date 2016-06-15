package introToCs.creditcard;


public class CreditCard{
	
	private int creditLimit;
	private int balance;
	private String cardholder;
	private int purchases;
	
	/**
	 * Constructs a credit card with a predetermined credit limit and
	 * the provided cardholder name.
	 *   
	 * @param name the cardholders name
	 */
	
	public CreditCard(String name){
		creditLimit = 500;
		balance = 0;
		cardholder = name;	
		purchases = 0;
	}
	
	/**
	 * Constructs a credit card with the provided name and credit limit.	
	 * 
	 * @param name the cardholder's name
	 * @param amount the amount of credit limit.
	 */
	public CreditCard(String name, int amount){
		creditLimit = amount;
		balance = 0;
		cardholder = name;
		purchases = 0;
	}
	
	/**
	 * Gets the credit limit of the credit card.
	 * 
	 * @return the credit limit.
	 */
	public int getCreditLimit(){
		return creditLimit;		
	}
	
	/**
	 * Gets the balance of the credit card.
	 * 
	 * @return the balance
	 */
	public int getBalance(){
		return balance;
	}
	
	/**
	 * Gets the cardholder.
	 *  
	 * @return the cardholder
	 */
	public String getCardHolder(){
		return cardholder;
	}
	
	/**
	 * Makes a purchase increasing the balance of the credit card.
	 * 
	 * @param amount the amount of purchase
	 */
	public void makePurchase(int amount){
		int availabeCredit = creditLimit - balance;
		if(amount > availabeCredit){
			 balance = balance + amount + 50;
		} else {
			balance = balance + amount;
			purchases++;
		}
		
		
	}
	
	/**
	 * Makes the payment to the credit card decreasing the balance.
	 * @param amount
	 */
	public void makePayments(int amount){
		balance = balance - amount;
	}
	
	/**
	 * Calculates the number of reward points earned.
	 * 
	 * @return the number of reward points
	 */
	public int calculateRewardPoints(){
		int points = 0;
		
		for(int i = 0 ; i < purchases; i++){
			points = points + 100;
		}
		
		return points;
	}
	

}