# instance methods - methods of a class which uses "self" keyword to access
#                    & modify the instance attirbutes of a class
# static method - do not take "self" parameter, with decorator "@staticmethod"
#                   ignore binding of the object
# decorators - are functions which takes another function & extend their functionality

class Employee:
    def employeeDetails(self):
        self.name = "Ben"

    @staticmethod
    def welcomeMessage():
        print("Welcome to our organization!")

employee = Employee()
employee.employeeDetails()
print(employee.name)
employee.welcomeMessage()
