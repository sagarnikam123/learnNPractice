# TypeError: employeeDetails() takes 0 positional arguments but 1 was given
#class Employee:
#    def employeeDetails():
#        pass
#
#employeeOne = Employee()
#employeeOne.employeeDetails()

# How python calls the method
#Employee.employeeDetails(employeeOne)

class Employee2:
    def employeeDetails(fake):  # can put "self" also
        fake.name = "Matthew"
        print("Name = ", fake.name)
        age = 30    # without self parameter
        print("Age = ", age)

    def printEmployee2Details(self):
        print("Printing in another method")
        print("Name: ", self.name)
        # NameError: name 'age' is not defined
        #print("Age: ", age)

employeeTwo = Employee2()
employeeTwo.employeeDetails()
Employee2.employeeDetails(employeeTwo)   # another calling method
employeeTwo.printEmployee2Details()
