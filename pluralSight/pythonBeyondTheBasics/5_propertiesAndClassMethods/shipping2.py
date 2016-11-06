# shipping2.py
class ShippingContainer2:

    next_serial = 1337

    @staticmethod
    def _get_next_serial():
        result = ShippingContainer2.next_serial
        ShippingContainer2.next_serial += 1
        return result

    def __init__(self, owner_code, contents):
        self.owner_code = owner_code
        self.contents = contents
        self.serial = ShippingContainer2._get_next_serial()
