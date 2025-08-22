# 10_functions

tom_exp_list = [2100, 3400, 3500]
joe_exp_list = [200, 500, 700]

total = 0
for item in tom_exp_list:
    total = total + item
print("Tom's total expenses: ", total)

total = 0
for item in joe_exp_list:
    total = total + item
print("Joe's total expenses: ", total)
################################################################################

def calculate_total(exp):
    total = 0
    for item in exp:
        total = total + item
    return total

toms_total = calculate_total(tom_exp_list)
joes_total = calculate_total(joe_exp_list)

print("Tom's total expenses: ", toms_total)
print("Joe's total expenses: ", joes_total)
################################################################################

def sum(a, b):
    total = a + b
    return total

n = sum(5, 6)
print('Total: ', n)
################################################################################

total = 0


def sum(a, b):
    print('a: ', a)
    print('b: ', b)

    total = a + b
    print('Total inside function : ', total)
    return total


n = sum(b=5, a=6)
print('n: ', n)
print('Total outside function : ', total)
################################################################################

total = 0


def sum(a, b=0):
    print('a: ', a)
    print('b: ', b)

    total = a + b
    print('Total inside function : ', total)
    return total


n = sum(5)
print('n: ', n)
print('Total outside function : ', total)
################################################################################

total = 0


def sum(a, b=0):
    """
    This function takes two arguments which are integer numbers and
    it will return sum of them as an output

    :param a:
    :param b:
    :return total:
    """
    print('a: ', a)
    print('b: ', b)

    total = a + b
    print('Total inside function : ', total)
    return total


n = sum(5)
print('n: ', n)
print('Total outside function : ', total)
################################################################################

# Exercise

# 1

def calculate_area(base, height):
    """
    This function takes base & height of triangle
    and return area of triangle.

    :param base: base of Triangle
    :param height: height of Triangle
    :return area: Area of Triangle
    """
    area = 1/2 * (base * height)
    return area


print('Area of Triangle: ', calculate_area(4, 5))
################################################################################

# 2

def calculate_shaped_area(base, height, shape):
    """
    This function takes base(width), height(length) & shape
    and return area of that shape.

    :param base: base/width
    :param height: height/length
    :param shape: t-triangle, s-square
    :return area: area of given shape
    """
    if shape == 't':
        area = 1/2 * (base * height)
        return area
    elif shape == 's':
        area = base * height
        return area
    else:
        print("Can't find shape given")


print('Area of shape: ', calculate_shaped_area(4, 5, 's'))
################################################################################

# 3
def print_pattern(pattern):
    for i in range(1, pattern+1):
        for j in range(i):
            print('*', end='')
        print('\n')


print_pattern(3)
