def add_and_power(a,b)
(a+b)**(a+b)
end

puts "First Number Please "
input1= gets	# gets input string from console
puts "Second Number Please "
input2= gets

puts "The result is :- ", add_and_power(input1.to_i,input2.to_i)	#puts string on console
