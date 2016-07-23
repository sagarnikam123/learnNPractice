package devprocess;

public class Message {

	private User user;
	private String content;
	
	/**
	 * Costructs a new message
	 * @param u the user
	 * @param m the message
	 */
	public Message(User u,String m){
		user = u;
		content = m;
	};
	
	
	/**
	 * Get's the message
	 * @return the message
	 */
	public String getMessage(){
		String message = content+" - by: "+user.getName()+"\n";
		return message;
	} 
}
