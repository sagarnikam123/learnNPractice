# 18_Inheritance

class Vehicle:
    def general_usage(self):
        print('general use: transportation')


class Car(Vehicle):
    def __init__(self):
        print("I'm Car")
        self.general_usage()
        self.wheels = 4
        self.has_roof = True

    def specific_usage(self):
        print('Specific use: commute to work, vacation with family')


class MotorCycle(Vehicle):
    def __init__(self):
        print("I'm motor cycle")
        self.general_usage()
        self.wheels = 2
        self.has_roof = False

    def specific_usage(self):
        print('specific use: road trip, racing')


c = Car()
c.specific_usage()
c.general_usage()

print()

m = MotorCycle()
m.specific_usage()
m.general_usage()

print()

print(isinstance(c, Car))
print(isinstance(c, MotorCycle))
print(issubclass(Car, Vehicle))
print(issubclass(MotorCycle, Car))
