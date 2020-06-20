# Tic-Tac-Toe

class TicTacToe:
    _result = ''
    _x_3 = 0
    _o_3 = 0
    _x_each = 0
    _o_each = 0
    _e_each = 0
    _next_move = 'X'


    def __init__(self, line):
        self._line = line
        self._check_each_element()


    def _check_each_element(self):
        """Checking for X, O, _"""
        self._x_each = 0
        self._o_each = 0
        self._e_each = 0

        for ele in self._line:
            if ele == 'X':
                self._x_each += 1
            if ele == 'O':
                self._o_each += 1
            if ele == '_':
                self._e_each += 1


    def _check_list_count(self, l):
        if l.count('X') == 3:
            self._x_3 += 1
        if l.count('O') == 3:
            self._o_3 += 1


    def _horizontal_pass(self):
        """Horizontal pass"""
        for i in range(0, 7, 3):
            # print(i) # 0 3 6
            h = [self._line[i], self._line[i+1], self._line[i+2]]
            self._check_list_count(h)


    def _vertical_pass(self):
        """Vertical pass"""
        for j in range(3):
            # print(j) # 0 1 2
            v = [self._line[j], self._line[j+3], self._line[j+6]]
            self._check_list_count(v)


    def _diagonal_pass(self):
        """Diagonal pass"""
        d1 = [self._line[0], self._line[4], self._line[8]]
        self._check_list_count(d1)
        d2 = [self._line[2], self._line[4], self._line[6]]
        self._check_list_count(d2)


    def check_result(self):
        """Game results"""
        # do all dimention pass & individual field count
        self._check_each_element()
        self._horizontal_pass()
        self._vertical_pass()
        self._diagonal_pass()

        if self._x_3 + self._o_3 == 0 and self._e_each >= 1 and abs(self._x_each - self._o_each) < 2:
            self._result = 'Game not finished'
        elif self._x_3 + self._o_3 == 0 and self._e_each == 0:
            self._result = 'Draw'
        elif self._x_3 >= 1 and self._o_3 == 0:
            self._result = 'X wins'
        elif self._o_3 >= 1 and self._x_3 == 0:
            self._result = 'O wins'
        #elif self._x_3 == self._o_3 or abs(self._x_each - self._o_each) >= 2:
        #    self._result = 'Impossible'


    def print_matrix(self):
        """Printing user-friendly tic-toc-toe Matrix"""
        print('---------')
        for i in range(0, 7, 3):
            print('| {} {} {} |'.format(self._line[i], self._line[i+1], self._line[i+2]))
        print('---------')


    def ask_coordinates(self):
        """Co-ordinates validation"""
        allowed_coordinates = ['1', '2', '3']
        coordinates = input('Enter the coordinates:').split()
        for coordinate in coordinates:
            if not coordinate.isdigit():
                print('You should enter numbers!')
                return False
            elif coordinate not in allowed_coordinates:
                print('Coordinates should be from 1 to 3!')
                return False
        check = self._check_replace(coordinates, action='check')
        if not check:
            print('This cell is occupied! Choose another one!')
            return False
        else:
            self._check_replace(coordinates, action='replace')
            if self._next_move == 'X':
                self._next_move = 'O'
            else:
                self._next_move = 'X'
        return True


    def _check_replace(self, coordinates, action):
        """Field validation & replacement"""
        first_co = int(coordinates[0])
        second_co = int(coordinates[1])
        k = 0
        for i in range(3, 0, -1):
            for j in range(1, 4):
                # print('({} {})'.format(j, i), end=' ')
                if j == first_co and i == second_co:
                    if action == 'check' and self._line[k] == '_':
                        return True
                    if action == 'replace':
                        #print(self._line[: k] + 'X' + self._line[k + 1: ])
                        self._line = self._line[: k] + self._next_move + self._line[k + 1: ]
                        return True
                k += 1
            #print()


# Running program
cells = '_________'
ticTacToe = TicTacToe(line=cells)
ticTacToe.print_matrix()

is_correct_coordinates = False
while not is_correct_coordinates:
    is_correct_coordinates = ticTacToe.ask_coordinates()
    ticTacToe.print_matrix()
    ticTacToe.check_result()
    #print(ticTacToe._result)
    if ticTacToe._result == 'Game not finished':
      is_correct_coordinates = False

print(ticTacToe._result)