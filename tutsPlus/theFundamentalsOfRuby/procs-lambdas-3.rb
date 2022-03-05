# procs-lambdas-3.rb

fruit = ->(str) { ["banana","apple","grape"].include? str }
vegetable = -> (str) {["potato","carrot","turnip"].include? str }
meat = -> (str) { ["veel","park","chicken"].include? str }

["potato","apple","chicken","mackarel"].each do |food|

	case food
	when fruit	# fruit === food
		puts food + " is a fruit."
	when vegetable
		puts food + " is a vegetable."
	when meat
		puts food + " is meat."
	else
		puts "I don't know what "+ food+  " is."
	end
end
