package introToCs.basics;
import java.awt.Rectangle;


public class AccessorsMutators {

	public static void main(String[] args) {
		
		// Working with Accessors & Mutators
		Rectangle rectangle = new Rectangle(20,50);
		rectangle.grow(5, 10);
		System.out.println(rectangle.getWidth());
		System.out.println(rectangle.getHeight());
		
	}

}
