#Learn Ruby-Tuts Plus


# irb- (interactive RuBy)-opens ruby interactive shell - read,eval,print loop-

3+2
5*40
40/4
25/2
25.0/2

25.class	# gives names of class or 25.class()
25.methods()	# finding all methods associated with object '25' or 25.methods
"Jimmy"	# string
"Jimmy".reverse
"Jimmy " * 5

# defining function
def add_and_power a,b
	(a+b)**(a+b)
end
#calling function
add_and_power 2,3	# 0r add_and_power(2,3)
self	# gives main object
self.class	# gives class of main object
self.methods

s1=:foo
s2=:foo
s1 equal? s2	# gives true ans

str1="Jimmy"
str2="Jimmy"

str1==str2	# true
str1.equal? str2	# false

puts "String"	# prints string
p "Kya bat"		# shortcut for puts
# =====================================================

# case - when - then == switch - case -break-default
