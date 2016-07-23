

	number = 0;
# Loop-1 - loop do
loop do
	break if number > 15
	puts "The number inside the loop-1 is #{number} "
	number += 1
end


	number =0;
# Loop-2 - until do
until number > 15 do
	puts "The number inside the loop-2 is #{number}"
	number += 1
end


	number=0;
#Loop - 3 - while do
while number <= 15 do
	puts "The number inside the loop-3 is #{number}"
	number +=1
end


# Loop - 4 - times do
16.times do |number|
	puts "The number inside the loop-4 is #{number}"
end	

# Loop - 5 - each do
list = [0,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15]
list.each do |number|
	puts "The number inside the loop-5 is #{number}"
end

# Loop - 6-a range object (..)
(0..15).each do |number|
	puts "The number inside the loop-6-a is #{number}"
end

# Loop- 6-b range object (...)
(0...16).each do |number|
	puts "The number inside the loop-6-b is #{number}"
end

# Loop -7 for-in do
for number in (0..15) do
	puts "The number inside the loop-7 is #{number}"
end