#1. ask for age
puts "Give age of a person";
age=gets.to_i;

#2. process

output = if age < 10
			"It's a young person."
		elsif age < 19
			"It's a teenager. "
		elsif age < 45
			"It's an adult. "
		elsif age < 95
			"It's an old person. "
		else
			"Is he dead? "
		end;


#3. output
puts output;
puts "Randachya";