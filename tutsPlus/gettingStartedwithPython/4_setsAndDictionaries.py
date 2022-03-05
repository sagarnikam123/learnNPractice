#! /usr/bin/env python

cars  = ['honda','ford','dodge','chevy','honda','dodge']
cars
autos = set(cars)
autos
motorcycles = ['honda','harley','yamaha','bmw','harley']
motos = set(motorcycles)
motos
motos - autos
autos | motos
autos & motos
dict  = {'key':'value'}
dict['key']
dict = {'name':'Jesse'}
dict['favourite site'] = 'tuts Plus'
dict
del dict['location']
dict
dict.keys()
dict.values()
'name' in dict
'not a real key' in dict
