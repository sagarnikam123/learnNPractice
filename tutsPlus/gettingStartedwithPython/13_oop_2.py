#! /usr/bin/env python

class house:
    def __init__(self, doors = 3):
        self.doors = doors

    def slamDoors(self):
        for door in range(self.doors):
            print('SLAM!')
        print("that's a lot of slamming for a house that costs ", self.__cost)

myHouse = house()
print(myHouse.doors)
whoseHouse = house(doors= 53)
print(whoseHouse.doors)

#inheritance
#subclass
class castle(house):
    def fireCannons(self, number):
        for cannon in range(number):
            print('firing cannon number ', cannon, 'boom !')

    def payMortage(self):
        print('reading the cannons!')

#polymorphism
class apartment(house):
    def payMortage(self):
        print("here's your money!")

inheritedHouse = castle(doors = 5)
print(inheritedHouse.doors)
print(inheritedHouse.fireCannons(8))

landlordsProperties = [castle(), apartment()]
for house in landlordsProperties:
    house.payMortage()
