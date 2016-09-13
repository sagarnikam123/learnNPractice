#! /usr/bin/env python

class house:
    doors = 2
    __cost = 12000  # private variable

    def addDoors(self, number):
        self.doors = number

    def slamDoors(self):
        for door in range(self.doors):
            print("SLAM!")
        print("that's a lot of slamming for a house that costs ", self.__cost)

myHouse = house()
myHouse.doors = 3
print(myHouse.doors)

myHouse.addDoors(-5)
myHouse.slamDoors()
#print(myHouse.__cost)  # gives error- AttributeError: house instance has no attribute '__cost'
