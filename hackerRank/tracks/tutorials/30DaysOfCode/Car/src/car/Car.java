package car;

public class Car {

	int maxSpeed = 100;
	int minSpeed = 0;
	double weight = 4079;
	boolean isTheCarOn = false;
	char condition = 'A';
	
	public void printVariables(){
		System.out.println("This is the max speed " + maxSpeed);
		System.out.println(minSpeed);
		System.out.println(weight);
		System.out.println(isTheCarOn);
		System.out.println(condition);
	}
	
	public void wreckCar() {
		condition = 'C';
	}
	
	public void upgradeMinSpeed(){
		minSpeed = maxSpeed;
		maxSpeed = maxSpeed + 1;
	}
	
	public static void main(String[] args) {
		Car familyCar = new Car();
		System.out.println("Family's car");
		familyCar.printVariables();
		familyCar.wreckCar();
		
		System.out.println();
		
		Car aliceCar = familyCar;
		aliceCar.upgradeMinSpeed();
		System.out.println("Alice's car");
		aliceCar.printVariables();
	}

}
