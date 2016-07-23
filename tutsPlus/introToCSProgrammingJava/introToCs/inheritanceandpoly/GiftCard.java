package introToCs.inheritanceandpoly;

public class GiftCard extends MoneyCard {
	
	public GiftCard(int amount){
		acceptability = new AcceptedSelectLocations();
		balance = amount; 
	}

}
