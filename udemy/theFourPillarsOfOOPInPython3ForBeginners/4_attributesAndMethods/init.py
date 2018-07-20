# __init__ - method which initializes all the attributes of a object or a class before they are being used,
#           first method called at the time of object creation

class Employee:

    def __init__(self, name):
        self.name = name

    def displayEmployeeDetails(self):
        print(self.name)

employee = Employee("Mark")
employeeTwo = Employee("Matthew")

# AttributeError: 'Employee' object has no attribute 'name'
# if called below method without the class having __init__ method
employee.displayEmployeeDetails()
employeeTwo.displayEmployeeDetails()
