#1. ask for car model

print "Tell me a car model - "
car_model = gets.strip


#2. process

output = case car_model
	when "Focus","Fiesta" then "Ford"
	when "Ibiza" then "Seat"
	when "Civic" then "Honda"
	else "Unknown model"
	end

#3. output
print "The car company for #{car_model} is ",output


			