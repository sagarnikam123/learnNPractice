# Rock-Paper-Scissors

import random

class RockPaperScissors(object):

    _userscore = 0
    _choices = []


    def ask_greet_user(self):
        self._username = input('Enter your name:')
        print('Hello, {}'.format(self._username))


    def set_user_rating(self):
        user_rating = {}
        rating_file = open('rating.txt', mode='r')
        for user in rating_file:
            user_data = user.split()
            user_rating[user_data[0]] = int(user_data[1])

        if self._username in user_rating.keys():
            self._userscore = user_rating[self._username]


    def _make_middle_ele_second_list(self, first_list, user_middle_input):
        second_list = []
        middle_universal_index = len(first_list)//2
        user_input_index = first_list.index(user_middle_input)

        # insertion
        i_stopping = len(first_list) - 1
        j_stopping = len(first_list) - 1
        i = user_input_index    # first_list
        j = middle_universal_index  # second_list

        for z in range(len(first_list)):
            #print('i-{}  j-{} j-stopping-{}'.format(i, j, j_stopping))
            if j <= j_stopping:
                second_list.insert(j, first_list[i])

            if j == j_stopping:
                j = 0
                j_stopping = middle_universal_index
            else:
                j += 1

            if i == i_stopping:
                i = 0
                i_stopping = user_input_index
            else:
                i += 1

        return second_list


    def _check_win_lose_draw(self, user_choose, comp_choose, second_list):
        user_choose_index = second_list.index(user_choose)
        comp_choose_index = second_list.index(comp_choose)

        if user_choose_index == comp_choose_index:    # Draw
            self._userscore += 50
            print('There is a draw ({})'.format(comp_choose))
        elif comp_choose_index > user_choose_index:  # Lose
            print('Sorry, but computer chose {}'.format(comp_choose))
        elif comp_choose_index < user_choose_index:   # Win
            self._userscore += 100
            print('Well done. Computer chose {} and failed'.format(comp_choose))


    def play(self, user_choose):
        comp_choose = random.choice(self._choices)
        second_list = self._make_middle_ele_second_list(self._choices, user_choose)
        #print('second list - ',second_list)
        self._check_win_lose_draw(user_choose, comp_choose, second_list)


    def take_input_play(self):
        user_choose = ''
        # user interaction
        while user_choose != '!exit':
            user_choose = input().strip()
            
            if user_choose == '!rating':
                print('Your rating: {}'.format(self._userscore))
            elif user_choose == '!exit':
                print('Bye!')
                quit()
            elif user_choose in self._choices:
                self.play(user_choose)
            elif user_choose == '':
                self._choices = ['rock', 'paper', 'scissors']
                print("Okay, let's start")
                continue
            elif len(self._choices) > 1 and user_choose not in self._choices:
                print('Invalid input')
                continue
            else:
                choices = user_choose.split(',')
                if len(choices) > 1:
                    self._choices = choices
                    print("Okay, let's start")
                    #print(self._choices)
                    continue


# running program
rockPaperScissors = RockPaperScissors()
rockPaperScissors.ask_greet_user()
rockPaperScissors.set_user_rating()
rockPaperScissors.take_input_play()