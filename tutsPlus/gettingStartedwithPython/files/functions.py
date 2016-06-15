#! /usr/bin/env python


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
