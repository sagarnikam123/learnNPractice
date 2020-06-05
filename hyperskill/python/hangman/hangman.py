# Hangman

from random import choice

print('H A N G M A N')
action = ''
while input('Type "play" to play the game, "exit" to quit:') == 'play':
    game_word = list(choice(['python', 'java', 'kotlin', 'javascript']))
    show_word = list('-' * len(game_word))
    attempt_count = 8
    uni_guess_letter = set()
    
    while attempt_count > 0:
        print()
        print(''.join(show_word))
        letter = input('Input a letter:')

        if len(letter) != 1:
            print('You should input a single letter')
            continue
        if not letter.islower() or not letter.isascii():
            print('It is not an ASCII lowercase letter')
            continue
        if letter in uni_guess_letter:
            print('You already typed this letter')
            continue
        uni_guess_letter.add(letter)
        
        if letter in game_word:
            for i in range(len(game_word)):
                if game_word[i] == letter:
                    show_word[i] = letter
            if game_word == show_word:
                print(f"You guessed the word {''.join(show_word)}!")
                break
        else:
            attempt_count -= 1
            print('No such letter in the word')

    if attempt_count == 0:
        print('You are hanged!')
    else:
        print("You survived!")
    print()