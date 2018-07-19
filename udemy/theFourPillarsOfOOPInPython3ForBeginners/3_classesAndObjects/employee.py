# check if an employee has achieved his weekly target or not

class Employee:
    name = "Ben"
    designation = "Sales Executive"
    salesMadeThisWeek = 6
    def hasAchievedTarget(self):
        if self.salesMadeThisWeek >= 5:
            print("Target has been achieved")
        else:
            print("Target has not been achieved")

employeeOne = Employee()
print(employeeOne.name)
employeeOne.hasAchievedTarget()

employeeTwo = Employee()
print(employeeTwo.name)

# Everything in Python is an object
numbers = [1, 2, 3]
print(type(numbers))
numbers.append(4)
print(numbers)
