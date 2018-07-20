# Class attribute - common to instance of a class
#                   i.e. for every object u create for a particular class
#                   the value remains same (creted using className.attributeName)
# instance attribute - specific to a instance of an object
#                   created using objectName.attributeName

class Employee:
    numberOfWorkingHours = 40

employeeOne = Employee()
employeeTwo = Employee()

print(employeeOne.numberOfWorkingHours)
print(employeeTwo.numberOfWorkingHours)

# changing the class attribute value
Employee.numberOfWorkingHours = 45
print(employeeOne.numberOfWorkingHours)
print(employeeTwo.numberOfWorkingHours)

# Give instance attributes for a class
employeeOne.name = "John"
print(employeeOne.name)
# AttributeError: 'Employee' object has no attribute 'name'
#print(employeeTwo.name)
employeeTwo.name = "Mary"
print(employeeTwo.name)

# change class attribute using object
employeeOne.numberOfWorkingHours = 40
print(employeeOne.numberOfWorkingHours)
print(employeeTwo.numberOfWorkingHours)

# Python first checks instance attributes is present on object,
# if not then picks up class attribute
