package generics2;

// Not working
public class PaperTray {

	int pages = 0;
	
	public void addPaper(int count){
		pages += count;
	}
	
	public void usePage(){
		pages--;
	}
	
	public boolean isEmpty(){
		return pages > 0;
	}
}
