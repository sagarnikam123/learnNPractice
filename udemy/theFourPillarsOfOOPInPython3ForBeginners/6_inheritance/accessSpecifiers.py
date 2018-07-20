# Public => memberName
# Protected => _memberName
# Private => __memberName

class Car:
    numberOfWheels = 4
    _color = "Black"
    __yearOfManufacture = 2017  # _Car__yearOfManufacture, this is call Name Mangling

class Bmw(Car):
    def __init__(self):
        print("Protected attribute color: ", self._color)

car = Car()
print("Public attribute numberOfWheels: ", car.numberOfWheels)
bmw = Bmw()
# AttributeError: 'Car' object has no attribute '__yearOfManufacture'
#print("Private attribute yearOfManufacture: ", car.__yearOfManufacture)
print("Private attribute yearOfManufacture: ", car._Car__yearOfManufacture)
