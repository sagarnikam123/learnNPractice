# Smart Calculator
from collections import deque


class SmartCalculator(object):

    @staticmethod
    def take_input():
        return input().strip()

    @staticmethod
    def print_help():
        print('The program performs given operations on the numbers')

    @staticmethod
    def split_input_list(in_line):
        return [x for x in in_line.strip().split()]

    @staticmethod
    def check_single_variable(var):
        if var.isalpha():
            return True
        return False

    @staticmethod
    def correct_signs(split1):
        """
        corrects plus & minus sign, e.g. ++++ ----
        """
        split2 = []
        for letter in split1:
            if letter.startswith('+') and len(letter) > 1 and not letter[1:].isdigit():
                split2.append('+')
            elif letter.startswith('-') and len(letter) > 1 and not letter[1:].isdigit():
                if len(letter) % 2 == 0:
                    split2.append('+')
                else:
                    split2.append('-')
            else:
                split2.append(letter.strip())
        return split2

    def check_n_print_single_variable(self, in_line, var_dict_db):
        if in_line.isdigit():
            print(int(in_line))
        elif in_line.startswith('+') or in_line.startswith('-'):
            print(int(in_line))
        elif self.check_single_variable(in_line) and inline in var_dict_db:
            print(var_dict_db[inline])
        else:
            print('Unknown variable')

    def check_var_assignment(self, split_in, var_dict_db):
        left_hs = split_in[0].strip()
        right_hs = split_in[1].strip()
        if len(split_in) > 2:
            print('Invalid assignment')
            return
        if not self.check_single_variable(left_hs):  # left side
            print('Invalid identifier')
        elif right_hs.isdigit():
            var_dict_db[left_hs] = right_hs
        elif not self.check_single_variable(right_hs):  # right side
            print('Invalid assignment')
        else:
            if right_hs in var_dict_db:
                var_dict_db[left_hs] = var_dict_db[right_hs]
            else:
                print('Unknown variable')

    @staticmethod
    def check_value(val):
        if not val.isnumeric():
            return False
        return True

    def perform_on_brackets(self, split_input_in, var_dict_db):
        start_br = 0
        end_br = 0
        for i, value in enumerate(split_input_in):
            if value.startswith('('):
                start_br = i
            if value.endswith(')'):
                end_br = i

        if start_br != 0 or end_br != 0:
            inline_brackets = split_input_in[start_br + 1:end_br]
            postfix_eq_x = self.infix_to_postfix(inline_brackets)
            postfix_digits_x = self.postfix_with_digits(postfix_eq_x, var_dict_db)
            ans = self.postfix_to_answer(postfix_digits_x)
            del split_input_in[start_br: end_br + 1]
            split_input_in.insert(start_br, ans)
        return split_input_in

    @staticmethod
    def check_arithmetic_expression(split_input_in, var_dict_db):
        symbols = ['+', '-', '*', '/', '(', '^', ')']
        # ( )
        if split_input_in.count('(') != split_input_in.count(')'):
            return False

        for letter in split_input_in:
            # sign check - * /
            if letter.startswith('*') or letter.startswith('/'):
                if len(letter) > 1:
                    return False
            # variable in dict
            elif not letter.isdigit() and letter not in symbols:
                if letter not in var_dict_db:
                    return False
        return True

    @staticmethod
    def is_high_precedence(op, op_stack):
        op_pre_dict = {'(': 1, ')': 1, '^': 2, '/': 3, '*': 3, '+': 4, '-': 4}
        if op_pre_dict[op] < op_pre_dict[op_stack[len(op_stack) - 1]]:
            return True
        return False

    def infix_to_postfix(self, eq):
        operators = ['+', '-', '*', '/', '^']
        holder = ''
        op_stack = deque()
        for letter in eq:
            if letter not in operators:
                holder += ' ' + str(letter)
            if letter in operators:
                if len(op_stack) >= 1:
                    if self.is_high_precedence(letter, op_stack):
                        op_stack.append(letter)
                    else:
                        for _ in range(len(op_stack)):
                            holder += ' ' + str(op_stack.pop())
                        op_stack.append(letter)
                else:
                    op_stack.append(letter)
        # pop all operators & output
        for _ in range(len(op_stack)):
            holder += ' ' + str(op_stack.pop())
        return holder.strip()  # removes unwanted spaces

    @staticmethod
    def postfix_with_digits(postfix_line, var_dict_db):
        eq_split = postfix_line.split()
        for i, letter in enumerate(eq_split):
            if letter in var_dict_db:
                eq_split[i] = var_dict_db[letter]
        return ' '.join(eq_split)

    def postfix_to_answer(self, postfix_line):
        split_postfix = postfix_line.split()
        ans_stack = deque()
        operators = ['+', '-', '*', '/', '^']

        for letter in split_postfix:
            if letter.isdigit():
                ans_stack.append(int(letter))
            elif letter in operators:
                op_2 = ans_stack.pop()
                op_1 = ans_stack.pop()
                ans_stack.append(self.perform_ops(op_1, letter, op_2))
        return ans_stack.pop()

    @staticmethod
    def perform_ops(op_1, operator, op_2):
        ans = 0
        if operator == '^':
            ans = op_1 ** op_2
        elif operator == '*':
            ans = op_1 * op_2
        elif operator == '/':
            ans = op_1 // op_2
        elif operator == '+':
            ans = op_1 + op_2
        elif operator == '-':
            ans = op_1 - op_2
        return ans


# Run
smartCal = SmartCalculator()
var_dict = dict()

while True:
    inline = smartCal.take_input()

    if inline.startswith('/'):
        if inline == '/exit':
            print('Bye!')
            exit()
        elif inline == '/help':
            smartCal.print_help()
        else:
            print('Unknown command')
    elif len(inline) == 0:
        continue
    elif inline.find('=') == -1 and inline.find('+') == -1 and inline.find('-') == -1 and inline.find(
            '*') == -1 and inline.find('/') == -1:  # single variable
        smartCal.check_n_print_single_variable(inline, var_dict)
    elif inline.find('=') != -1:  # variable assignment
        split_input = inline.split('=')
        smartCal.check_var_assignment(split_input, var_dict)
    else:  # arithmetic expression
        inline = inline.replace('(', ' ( ')
        inline = inline.replace(')', ' ) ')
        split_1 = inline.split()
        split_2 = smartCal.correct_signs(split_1)
        if smartCal.check_arithmetic_expression(split_2, var_dict):
            split_2 = smartCal.perform_on_brackets(split_2, var_dict)
            postfix_eq = smartCal.infix_to_postfix(split_2)
            postfix_digits = smartCal.postfix_with_digits(postfix_eq, var_dict)
            print(smartCal.postfix_to_answer(postfix_digits))
        else:
            print('Invalid expression')