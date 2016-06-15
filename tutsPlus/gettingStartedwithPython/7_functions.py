#! /usr/bin/env python

def madlib(adjective ='thirsty',name = 'adam'):
	print "the %s %s ate all the pizza" %(adjective,name)
madlib() 
madlib(adjective='hungry',name = 'adam')
	
def shoppingCart(itemName, *avgPrices):
	for price in avgPrices :
		print "price: ", price
shoppingCart('computer',100,120,34)

def shoppingCart(itemName, **avgPrices):
	for price in avgPrices :
		print price , 'price : ', avgPrices[price]
shoppingCart('computer',amazon = 100,ebay = 120,bestBuy = 34)
	
def dbLookup() :
	dict = {}
	dict['amazon'] = 100
	dict['ebay'] = 120
	dict['bestBuy'] = 34
	return dict

def shoppingCart(itemName, avgPrices):
	print 'item : ', itemName
	for price in avgPrices:
		print price, 'price: ', avgPrices[price]
shoppingCart('computer',dbLookup())
