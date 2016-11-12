# shipping5.py

import iso6346

class ShippingContainer5:

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
    def create_empty(cls, owner_code, *args, **kwargs):
        return cls(owner_code, contents=None, *args, **kwargs)

    @classmethod
    def create_with_items(cls, owner_code, items, *args, **kwargs):
        return cls(owner_code, contents = list(items), *args, **kwargs)

    def __init__(self, owner_code, contents):
        self.owner_code = owner_code
        self.contents = contents
        self.bic = self._make_bic_code(
                    owner_code=owner_code,
                    serial=ShippingContainer5._get_next_serial()
                    )

class RefrigeratedShippingContainer(ShippingContainer5):

    MAX_CELSIUS = 4.0

    @staticmethod
    def _make_bic_code(owner_code, serial):
        return iso6346.create(owner_code= owner_code,
                                serial=str(serial).zfill(6),
                                category='R')

    def __init__(self, owner_code, contents, celsius):
        super().__init__(owner_code, contents)
        if celsius > RefrigeratedShippingContainer.MAX_CELSIUS:
            raise ValueError('Temperature too hot !')
        self.celsius = celsius
