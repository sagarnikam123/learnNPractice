# 19_Multiple Inheritance

class Father:
    def gardening(self):
        print('I enjoy gardening')


class Mother:
    def cooking(self):
        print('I love cooking')


class Child(Father, Mother):
    def sports(self):
        print('I enjoy sports')


c = Child()
c.gardening()
c.cooking()
c.sports()
print()
################################################################################


class Father2:
    def skills(self):
        print('gardening, programming')


class Mother2:
    def skills(self):
        print('cooking, art')


class Child2(Father2, Mother2):
    def skills(self):
        Father2.skills(self)
        Mother2.skills(self)
        print('sports')


c2 = Child2()
c2.skills()
