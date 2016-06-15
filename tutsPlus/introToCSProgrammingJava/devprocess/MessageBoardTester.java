package devprocess;

public class MessageBoardTester {

	public static void main(String[] args) {
		// Testing the Message Board
		
		MessageBoard board = new MessageBoard();
		
		User andrew = new User("Andrew");
		User jane = new User("Jane");
		
		Message m1 = new Message(andrew, "Hey Jane, how are you doing ?");
		Message m2 = new Message(jane, "I'm doing good! Thanks for asking!");
		
		board.post(m1);
		board.post(m2);
		
		System.out.println(board.display());

	}

}
