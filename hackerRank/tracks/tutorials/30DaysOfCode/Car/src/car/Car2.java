package car;

public class Car2 {

	int maxSpeed = 100;
	int minSpeed = 0;

	double weight = 4079;	// pound

	boolean isTheCarOn = false;
	char condition = 'A';
	String nameOfCar = "Lucy";

	double maxFuel = 16; // gallon
	double currentFuel = 8;
	double mpg = 26.4; // mass per gallon

	int numberOfPeopleInCar = 1;

	// f(x, y, z) = x + 1/z - y;
	// Say x = 5;
	// f(5) = 5 + 1 = 6;

	public Car2(int customMaxSpeed, double customWeight, boolean customIsTheCarOn ) {
		maxSpeed = customMaxSpeed;
		weight = customWeight;
		isTheCarOn = customIsTheCarOn;
	}

	public void printVariables(){
		System.out.println("This is the max speed " + maxSpeed);
		System.out.println(minSpeed);
		System.out.println(weight);
		System.out.println(isTheCarOn);
		System.out.println(condition);
		System.out.println(nameOfCar);
		System.out.println(numberOfPeopleInCar);
	}

	public void wreckCar() {
		condition = 'C';
	}

	public void upgradeMinSpeed(){
		minSpeed = maxSpeed;
		maxSpeed = maxSpeed + 1;
	}

	public void getIn() {
		// numberOfPeopleInCar = numberOfPeopleInCar + 1;
		numberOfPeopleInCar++;
	}

	public void getOut() {
		numberOfPeopleInCar--;
	}

	public double howManyMilesTillOutOfGas() {
		return currentFuel * mpg;
	}

	public double maxMilesPerFillUp() {
		return maxFuel * mpg;
	}

	public static void main(String[] args) {
		Car2 birthdayPresent = new Car2(500, 5000.545, true);
		System.out.println("Birthday car v1");
		birthdayPresent.printVariables();
		birthdayPresent.getIn();
		birthdayPresent.getIn();
		birthdayPresent.getIn();
		System.out.println("Miles left: "+ birthdayPresent.howManyMilesTillOutOfGas());
		System.out.println("Max Miles: " +  birthdayPresent.maxMilesPerFillUp());

		System.out.println("Birthday car v2");
		birthdayPresent.printVariables();
		birthdayPresent.getOut();

		System.out.println("Birthday car v3");
		birthdayPresent.printVariables();

		System.out.println();
		/*
		System.out.println("Christmas car");
		Car2 christmasCar = new Car2(550, 2000, false);
		christmasCar.printVariables();
		*/

	}

}
