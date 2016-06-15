class Car

	# 1st method
	attr_reader :state 	# act as getter of variable/method
	attr_writer :state 	# acts as setter of variable/method


	# 2nd method
	attr_accessor :state 	# acts as getter & setter

	def initialize engine,tires
		@engine = engine	#instance variables
		@tires = tires
	end
	# implicitely, all variables of class/instance variables are private by default

	def start
		@state="started"
		p "Car has started"
	end

	def stop
		@state = "stopeed"
		p "Car has stopeed"
	end

end


car = Car.new "My beautiful engine", [1,2,3,4]

# related to class
puts car 	# prints class's memory address
puts car.inspect	# prints what's in car object

# checking stes
car.start
p 'The current Car\'s state is  #{car.state}'
car.stop
p "The current Car's state is #{car.state}"
car.state = "something"

p "The current Car's state is #{car.state} "
