package devprocess;

import java.util.ArrayList;

public class MessageBoard {
	
	private ArrayList<Message> messages;
 
	/**
	 * Constructs a new Message Board
	 */
	public MessageBoard(){
		messages = new ArrayList<Message>();
	}
	
	/**
	 * Post a new message
	 * @param m the message
	 */
	public void post(Message m){
		messages.add(m);
	}
	
	/**
	 * Display all of the messages
	 * @return all of the messages
	 */
	public String display(){
		String theMessages = "Welcome to the Message Board\n\n";
		
		for(int i = 0;i< messages.size(); i++){
			
			theMessages = theMessages + messages.get(i).getMessage();
		}
		
		return theMessages;
	}
}
