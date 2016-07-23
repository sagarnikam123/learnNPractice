def form_with_proc p
	puts "<form>"
	p.call true
	puts "</fomr>"
end


def form_with_lambda p
	puts "<form>"
	p.call true
	puts "</fomr>"
end


def paragraph text
	puts "<p>"+text+"</p>"
end

def quote text
	puts "<blockquote>"+text+"</blockquote>"
end


myproc = Proc.new do |only_quotes|
	p only_quotes;
	puts "First Proc"
	paragraph "This is a paragraph." unless only_quotes	
	quote "This is a quote from Shakespeare."
end

secondProc = proc do 
	puts "Second Proc"
	paragraph "This is a paragraph."
	quote "This is a quote from Shakespeare."
end

thirdProc = -> {
	puts "Third Proc"
	paragraph "This is a paragraph."
	quote "This is a quote from Shakespeare."
}

myLambda = lambda do |only_quotes|
	p only_quotes
	puts "From Lambda"
	paragraph "This is a paragraph."
	quote "This is a quote from Shakespeare."
end

form_with_proc myproc
form_with_lambda myLambda 	 # gives error if removes "true"
# form_with_proc secondProc
# form_with_proc thirdProc


