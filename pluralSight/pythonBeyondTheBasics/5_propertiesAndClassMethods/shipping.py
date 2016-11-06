class ShippingContainer:

    next_serial = 1337

    def __init__(self, owner_code, contents):
        self.owner_code = owner_code
        self.contents = contents

        # [class attribute]
        self.serial = ShippingContainer.next_serial
        ShippingContainer.next_serial += 1

        # still works [instance attribute]
        #self.serial = self.next_serial
        #self.next_serial += 1
