# procs-lambdas-2.rb

def run_block block
	print "Running a"
	block.call
	puts "... done.\n"
end

def app
	run_block lambda {print "lambda"; return}
	run_block proc { print "proc"; return}
end

app  