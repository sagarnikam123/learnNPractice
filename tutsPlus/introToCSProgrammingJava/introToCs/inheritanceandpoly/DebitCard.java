package introToCs.inheritanceandpoly;

public class DebitCard extends MoneyCard{
	
	public DebitCard(int amount){
		acceptability = new AcceptedEverywhere();
		balance = amount;
	}
	
	public void deposit(int amount){
		balance = balance + amount;
	}

}
