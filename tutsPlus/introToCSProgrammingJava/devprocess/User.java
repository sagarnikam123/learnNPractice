package devprocess;

public class User {

	private String name;
	
	/**
	 * Constructus a new user
	 * @param n the users name
	 */
	public User(String n){
		name = n;
	}
	
	/**
	 * Gets the users name
	 * @return the users name
	 */
	public String getName(){
		return name;
	}
}
