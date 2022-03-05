# blocks.rb

# define something
def form &block
	puts "<form>"
	yield	if block_given? #puts all contents coming from block
	puts "</form>"
end

def paragraph text
	puts "<p>" + text + "</p>"
end

def quote text
	puts "<blockquote>"+text + "</blockquote>"
end


# execute something
form do	# calls form & give its conetent as block
	paragraph "This is a paragraph"
	quote "This is a quote from Shakespeare"
end
