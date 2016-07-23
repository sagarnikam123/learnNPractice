# conditionals

########################################################################
def main():
	x, y =10, 100
	
	if x < y :
		st = "x is less than y"
	elif x ==y :
		st = "x is same as y"
	else:
		st = "x is greater than y"
	
	print st
########################################################################	
	# conditional statements - let you use a "if C else b"
	st = "x is less than y" if (x <y) else "x is greater than or equal to y"
	print st

	
if __name__ == "__main__":
	main()	

########################################################################
