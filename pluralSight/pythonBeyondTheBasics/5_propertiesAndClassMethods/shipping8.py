# shipping8.py

import iso6346

class ShippingContainer8:

    HEIGHT_FT = 8.5
    WIDTH_FT = 8.0

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
    def create_empty(cls, owner_code, length_ft, *args, **kwargs):
        return cls(owner_code, length_ft, contents=None, *args, **kwargs)

    @classmethod
    def create_with_items(cls, owner_code, length_ft, items, *args, **kwargs):
        return cls(owner_code, length_ft, contents = list(items), *args, **kwargs)

    def __init__(self, owner_code, length_ft,   contents):
        self.owner_code = owner_code
        self.length_ft = length_ft
        self.contents = contents
        self.bic = self._make_bic_code(
                    owner_code=owner_code,
                    serial=ShippingContainer8._get_next_serial()
                    )

    def _calc_volume(self):
        return ShippingContainer8.HEIGHT_FT * ShippingContainer8.WIDTH_FT * self.length_ft

    @property
    def volume_ft3(self):
        return self._calc_volume()

class RefrigeratedShippingContainer(ShippingContainer8):

    MAX_CELSIUS = 4.0

    FRIDGE_VOLUME_FT3 = 100

    @staticmethod
    def _make_bic_code(owner_code, serial):
        return iso6346.create(owner_code= owner_code,
                                serial=str(serial).zfill(6),
                                category='R')

    @staticmethod
    def _c_to_f(celsius):
        return celsius * 9/5 + 32

    @staticmethod
    def _f_to_c(fahrenheit):
        return (fahrenheit - 32) * 5/9

    def __init__(self, owner_code, length_ft, contents, celsius):
        super().__init__(owner_code, length_ft, contents)
        self._celsius = celsius

    @property
    def celsius(self):
        return self._celsius

    def _set_celsius(self,value):
        if value > RefrigeratedShippingContainer.MAX_CELSIUS:
            raise ValueError('Temperature too hot !')
            self.celsius = value

    def celsius(self, value):
        self._set_celsius()

    @property
    def fahrenheit(self):
        return RefrigeratedShippingContainer._c_to_f(self.celsius)

    @fahrenheit.setter
    def fahrenheit(self, value):
        self.celsius = RefrigeratedShippingContainer._f_to_c(value)

    def _calc_volume(self):
        return super()._calc_volume() - RefrigeratedShippingContainer.FRIDGE_VOLUME_FT3

class HeatedRefrigeratedShippingContainer(RefrigeratedShippingContainer):

    MIN_CELSIUS = -20.0

    def _set_celsius(self, value):
        if value < HeatedRefrigeratedShippingContainer.MIN_CELSIUS:
            raise ValueError('Temperature out of range !')
        super()._set_celsius(value)
