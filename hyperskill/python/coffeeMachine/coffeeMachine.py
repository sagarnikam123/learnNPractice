class CoffeeMachine:

    # init
    def __init__(self):
        self.water = 400
        self.milk = 540
        self.coffee_beans = 120
        self.disposable_cups = 9
        self.money = 550


    def machine_state(self):
        print('The coffee machine has:')
        print(self.water, 'of water')
        print(self.milk, 'of milk')
        print(self.coffee_beans, 'of coffee beans')
        print(self.disposable_cups, 'of disposable cups')
        print(self.money, 'of money')


    def make_coffee(self, water_r, milk_r, coffee_beans_r, disposable_cups_r, money_r): # r - reduced
        self.water -= water_r
        self.milk -= milk_r
        self.coffee_beans -= coffee_beans_r
        self.disposable_cups -= disposable_cups_r
        self.money += money_r 


    def check_quantity(self, water_c, milk_c, coffee_beans_c, disposable_cups_c): # c - check quantity
        return_statement = True
        if self.water < water_c:
            return_statement = 'Sorry, not enough water!'
        if self.milk < milk_c:
            return_statement = 'Sorry, not enough milk!'
        if self.coffee_beans < coffee_beans_c:
            return_statement = 'Sorry, not enough coffee beans!'
        if self.disposable_cups < disposable_cups_c:
            return_statement = 'Sorry, not enough disposable cups!'
        return return_statement


    def prepare_coffee(self, coffee_type):
        if coffee_type == 1: # espresso
            can_make_coffee = self.check_quantity(250, 0, 16, 1)
            if can_make_coffee == True:
                self.make_coffee(250, 0, 16, 1, 4)
        elif coffee_type == 2: # latte
            can_make_coffee = self.check_quantity(350, 75, 20, 1)
            if can_make_coffee == True:
                self.make_coffee(350, 75, 20, 1, 7)
        elif coffee_type == 3: # cappuccino
            can_make_coffee = self.check_quantity(200, 100, 12, 1)
            if can_make_coffee == True:
                self.make_coffee(200, 100, 12, 1, 6)
        if can_make_coffee != True:
            print(can_make_coffee)
        else:
            print('I have enough resources, making you a coffee!')


    def fill_machine(self, water_f, milk_f, coffee_beans_f, disposable_cups_f):
        self.water += water_f
        self.milk += milk_f
        self.coffee_beans += coffee_beans_f
        self.disposable_cups += disposable_cups_f


    def get_fill_details(self):
        water_f = int(input('Write how many ml of water do you want to add:'))
        milk_f = int(input('Write how many ml of milk do you want to add:'))
        coffee_beans_f = int(input('Write how many grams of coffee beans do you want to add:'))
        disposable_cups_f = int(input('Write how many disposable cups of coffee do you want to add:'))
        # fill machine with given details
        self.fill_machine(water_f, milk_f, coffee_beans_f, disposable_cups_f)


    def take_money(self):
        print('I gave you', '$' + str(self.money))
        self.money = 0


# program starts here
coffee = CoffeeMachine()

while True:
    action = input('Write action (buy, fill, take, remaining, exit):')
    if action == 'buy':
        coffee_type = input('What do you want to buy? 1 - espresso, 2 - latte, 3 - cappuccino, back - to main menu:')
        if coffee_type == 'back':
            continue
        else:
            int_coffe_type = int(coffee_type)
            coffee.prepare_coffee(int_coffe_type)
    elif action == 'fill':
        coffee.get_fill_details()
    elif action == 'take':
        coffee.take_money()
    elif action == 'remaining':
        coffee.machine_state()
    elif action == 'exit':
        break