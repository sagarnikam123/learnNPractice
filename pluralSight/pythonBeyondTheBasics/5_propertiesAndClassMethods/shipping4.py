# shipping4.py

import iso6346

class ShippingContainer4:

    next_serial = 1337

    @staticmethod
    def _make_bic_code(owner_code, serial):
        return iso6346.create(owner_code=owner_code,
                            serial = str(serial).zfill(6))

    @classmethod
    def _get_next_serial(cls):
        result = cls.next_serial
        cls.next_serial += 1
        return result

    @classmethod
    def create_empty(cls, owner_code):
        return cls(owner_code, contents=None)

    @classmethod
    def create_with_items(cls, owner_code, items):
        return cls(owner_code, contents = list(items))

    def __init__(self, owner_code, contents):
        self.owner_code = owner_code
        self.contents = contents
        self.bic = self._make_bic_code(
                    owner_code=owner_code,
                    serial=ShippingContainer4._get_next_serial()
                    )

class RefrigeratedShippingContainer(ShippingContainer4):

    @staticmethod
    def _make_bic_code(owner_code, serial):
        return iso6346.create(owner_code= owner_code,
                                serial=str(serial).zfill(6),
                                category='R')
