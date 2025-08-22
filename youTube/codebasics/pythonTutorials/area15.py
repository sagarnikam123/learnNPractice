# 15_if __name__ == __main__

def calculate_area_(base, height):
    print(' __name__ : ', __name__)
    return 1/2 * (base * height)


if __name__ == '__main__':
    print('I am in area.py')
    a = calculate_area_(10, 20)
    print('area: ', a)
