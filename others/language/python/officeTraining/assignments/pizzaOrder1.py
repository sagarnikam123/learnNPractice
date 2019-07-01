

class dominosPizzaOrder():
    """ usage for creating an object of this class"""
    
    orderNum = 0   
    pizzaNames = ["Margherita", "cornNonion", "FarmHouse", "CountrySpecial", ]
    pizzaCrusts = ["HandTossed", "ThinCrust", "CheezeBurst", "NewHandTossed"]
    pizzaToppings = ["Onion", "Tomato", "Capsicum", "CottageCheeze", "Jalapeno", "Mushroom", "BlackOlives", "RedPaprika", "GoldenCorn", "Babycorn"]
    OrderStatus = ["recieved", "preparation", "baking", "outForDelivery", "Delivered"]

    
    def __init__(self):
        self.name = input("What is your Name?   ")
        self.mobNumber = int(input("What is your Number?   "))
        
        self.pizzaName = input("What is your PizzaName?   ")
        if self.pizzaName not in dominosPizzaOrder.pizzaNames:
            print("wrong Pizza name, choose among below names:")
            print(" - ".join(dominosPizzaOrder.pizzaNames))
            raise Exception

        self.pizzaCrust = "HandTossed" #input("What is your PizzaCrust?   ")
        if self.pizzaCrust not in dominosPizzaOrder.pizzaCrusts:
            print("wrong crust name, choose among below names:")
            print(" - ".join(dominosPizzaOrder.pizzaCrusts))
            raise Exception

        self.toppings = input("Give a list of toppingsn please   ").split(" ")
        for x in self.toppings:
            if x not in dominosPizzaOrder.pizzaToppings:
                print("wrong toppings name, choose among below names:")
                print(" - ".join(dominosPizzaOrder.pizzaToppings))
                raise Exception

        
        self.orderId = self.incrementOrderid()
		
    def incrementOrderid(self):
        dominosPizzaOrder.orderNum += 1
        return dominosPizzaOrder.orderNum
        #self.Orderstatus