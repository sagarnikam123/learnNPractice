class Fraction:

    def __init__(self, top, bottom):

        self.num = top
        self.den =  bottom

    def show(self):
        print(self.num, '/', self.den)

    def __str__(self):
        return str(self.num) + '/' + str(self.den)

my_f = Fraction(3,5)
my_f.show()

print('Object - ',my_f)
print('I ate ', my_f, 'of the pizza')
my_f.__str__()
str(my_f)
