# handler.py

from random import randrange

def main():
    number = randrange(100)
    while True:
        try:
            guess = int(input('? '))
            #guess = foo(input("? "))
        except ValueError:
            continue
        if guess == number:
            print('You win!')
            break

if __name__ == '__main__':
    main()
