class dominosPizzaOrder(self):

    """usage for creating an object of this class"""

    pizzaNames = ['margherita', 'cornNonion', 'onionCapsicumTomato']
    pizzaCrusts = ['HandTossed' , 'ThinCrust', 'CheezeBurst', 'NewHandTossed']
    pizzaToppings = ['Onion', 'Tomato', 'Capsicum' ]
    OrderStatus = ['recieved', 'preperation', 'baking', 'outForDelivery', 'Delivered']

    def __init__(self, name, mobNumber, orderNumber, pizzaName, pizzaCrust, pizzaTopping):
        self.name = name
        self.mobNumber = mobNumber
        self.orderNumber = orderNumber
        self.pizzaName = pizzaName
        self.pizzaCrust = pizzaCrust
        self.pizzaTopping = pizzaTopping

    def listPizzas(self):
        pass

    def listCrusts(self):
        pass

    def listToppings(self,pizzaName):
        """takes a Pizza Name and list its toppings."""
        pass

    def orderDetails(self):
        """prints details of the order, including names and details"""
        pass

    def incrementStatus(self):
        """increment the status of order to next level"""
        pass

    def orderStatus(self):
        """returns current status"""
        pass
