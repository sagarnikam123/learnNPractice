package introToCs.inheritanceandpoly;

public class MoneyCard {

	protected int balance;
	protected Acceptability acceptability;
	
	public int getBalance(){
		return balance;
	}
	
	public void makePurchase(int amount){
		if(amount > balance){
			throw new IllegalArgumentException("Amount of the purchase exceeds the balance");			
		}
		
		balance = balance - amount;  
	}
	
	public String getAcceptability(){
		return acceptability.location();
	}
}
