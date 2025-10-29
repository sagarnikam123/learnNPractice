from abc import ABCMeta, abstractmethod
from random import randint

class Account(metaclass = ABCMeta):
    @abstractmethod
    def createAccount():
        return 0
    @abstractmethod
    def authenticate():
        return 0
    @abstractmethod
    def withdraw():
        return 0
    @abstractmethod
    def deposit():
        return 0
    @abstractmethod
    def displayBalance():
        return 0

class SavingsAccount(Account):
    def __init__(self):
        # [key][0]=> name, [key][1]=>
        self.savingsAccount = {}

    def createAccount(self, name, initialDeposit):
        self.accountNumber = randint(10000, 99999)
        self.savingsAccount[self.accountNumber] = [name, initialDeposit]
        print('Account creation has been successful. Your account number is: ', self.accountNumber)

    def authenticate(self, name, accountNumber):
        if accountNumber in self.savingsAccount.keys():
            if self.savingsAccount[accountNumber][0] == name:
                print('Authentication successful !')
                self.accountNumber = accountNumber
                return True
            else:
                print('Authentication Failed')
                return False
        else:
            print('Authentication Failed')
            return False

    def withdraw(self, withdrawalAmount):
        if withdrawalAmount > self.savingsAccount[self.accountNumber][1]:
            print('Insufficient balance')
        else:
             self.savingsAccount[self.accountNumber][1] -= withdrawalAmount
             print('Withdrawal was successful.')
             self.displayBalance()

    def deposit(self, despositAmount):
        self.savingsAccount[self.accountNumber][1] += despositAmount
        print('Deposit was successful.')
        self.displayBalance()

    def displayBalance(self):
        print('Available balance: ', self.savingsAccount[accountNumber][1])

savingsAccount = SavingsAccount()
while True:
    print('Enter 1 to create new account')
    print('Enter 2 to access an existing account')
    print('Enter 3 to exit')
    userChoice = int(input())
    if userChoice  == 1:
        print('Enter you name: ')
        name = input()
        print('Enter the initial deposit: ')
        deposit = int(input())
        savingsAccount.createAccount(name, deposit)
    elif userChoice == 2:
        print('Enter you name: ')
        name = input()
        print('Enter your account number: ')
        accountNumber = int(input())
        authenticationStatus = savingsAccount.authenticate(name, accountNumber)
        if authenticationStatus is True:
            while True:
                print()
                print('Enter 1 to withdraw: ')
                print('Enter 2 to deposit ')
                print('Enter 3 to display available balance')
                print('Enter 4 to go back to the previous menu')
                userChoice = int(input())
                if userChoice == 1:
                    print('Enter Withdrawal amount')
                    withdrawalAmount = int(input())
                    savingsAccount.withdraw(withdrawalAmount)
                elif userChoice == 2:
                    print('Enter an amount to be deposited')
                    despositAmount = int(input())
                    savingsAccount.deposit(despositAmount)
                elif userChoice == 3:
                    savingsAccount.displayBalance()
                elif userChoice == 4:
                    break
    elif userChoice == 3:
            quit()
