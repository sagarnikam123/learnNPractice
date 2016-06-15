# methods-3.rb




def method *list
	p list.inspect
end




method 1,2,3,4,5

args = [6,7,8,9,10]

method *args

method [1,2],3,[4,5]

method *[11,12],13,*[14,15]