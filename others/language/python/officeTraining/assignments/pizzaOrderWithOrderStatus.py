class dominosPizzaOrder():
    """usage for creating an object of this class"""
    
    orderNum = 0
    pizzaNames = ["Margherita", "cornNonion", "FarmHouse", "CountrySpecial", ]
    pizzaCrusts = ["HandTossed", "ThinCrust", "CheezeBurst", "NewHandTossed"]
    pizzaToppings = ["Onion", "Tomato", "Capsicum", "CottageCheeze", "Jalapeno", "Mushroom", "BlackOlives", "RedPaprika", "GoldenCorn", "Babycorn"]
    OrderStatus = ["recieved", "preparation", "baking", "outForDelivery", "Delivered"]
    
    def __init__(self):
        self.name = input("What is your Name?   ")
        self.mobNumber = int(input("What is your Number?   "))
        
        self.pizzaName = "Margherita" # input("What is your PizzaName?   ")
        if self.pizzaName not in dominosPizzaOrder.pizzaNames:
            self._raiseException(self.pizzaName, dominosPizzaOrder.pizzaNames)

        self.pizzaCrust = "HandTossed" #input("What is your PizzaCrust?   ")
        if self.pizzaCrust not in dominosPizzaOrder.pizzaCrusts:
            self._raiseException(self.pizzaCrust, dominosPizzaOrder.pizzaCrusts)

        self.toppings = input("Give a list of toppings please   ").split(" ")
        for x in self.toppings:
            if x not in dominosPizzaOrder.pizzaToppings:
                self._raiseException(self.toppings, dominosPizzaOrder.pizzaToppings)

        self.orderId = 0
        self.orderStatus = self.OrderStatus[self.orderId]
    
    def _incrementOrderid(self):
        """This is a private funcion and is responsible for incrementing the orderNum on every object creation"""
        dominosPizzaOrder.orderNum += 1
        return dominosPizzaOrder.orderNum
        #self.Orderstatus
    
    def changeOrderStatus(self, orderStatusId=0):
        """
        - changes the order status to next one from declared ordered list
        - can be called with 'Cancelled'      
        """
        if type(orderStatusId) == type(0) and self.orderId == len(dominosPizzaOrder.OrderStatus)-1:
            pass
        elif type(orderStatusId) == type(0):
            #print(self.orderId)
            self.orderId += 1
            self.orderStatus = self.OrderStatus[self.orderId]
        else:
            self.orderStatus = orderStatusId
        
    def _raiseException (self, inputValue, classList):
        """This is a private function and is responsible for raising exception in case input value is wrong!"""
        print("\n\nwrong input, Please choose among below names:")
        print(classList)
        try:
            raise Exception
        except:
            print("\n\nWrong input:", inputValue, "\nPLEASE TRY AGAIN!!!")
            raise
