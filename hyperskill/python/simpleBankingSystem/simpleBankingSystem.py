# Simple Banking System
import random
import sqlite3


class SimpleBankingSystem(object):
    _sqlite3_db_conn = None
    _sqlite3_cursor = None

    @staticmethod
    def print_welcome_message():
        print('1. Create an account')
        print('2. Log into account')
        print('0. Exit')
        return int(input())

    @staticmethod
    def _gen_rand_n_digit(n):
        return ''.join(['{}'.format(random.randint(0, 9)) for _ in range(0, n)])

    def _gen_credit_card_num_luhn_algo(self, iin='400000', cust_account_number=None):
        if cust_account_number is None:
            cust_account_number = self._gen_rand_n_digit(9)

        fixed_cc_number_list = list(iin + cust_account_number)
        int_fixed_cc_number_list = [int(num) for num in fixed_cc_number_list]

        # multiply odd digits by 2
        for i in range(1, len(int_fixed_cc_number_list) + 1):
            if i % 2 != 0:
                int_fixed_cc_number_list[i - 1] = int_fixed_cc_number_list[i - 1] * 2

        # substract 9 to numbers over 9
        for num, int_num in enumerate(int_fixed_cc_number_list):
            if int_num > 9:
                int_fixed_cc_number_list[num] = int_num - 9

        # add all numbers
        total = sum(int_fixed_cc_number_list)

        # find checksum number/control number ( multiple of 10)
        checksum = 0
        while total % 10 != 0:
            total += 1
            checksum += 1

        fixed_cc_number_list.append(checksum)
        str_cc_number = [str(num) for num in fixed_cc_number_list]
        return ''.join(str_cc_number)

    def set_sqlite3_connection_cursor(self, db_name='card.s3db'):
        self._sqlite3_db_conn = sqlite3.connect(db_name)
        self._sqlite3_db_conn.commit()
        self._sqlite3_cursor = self._sqlite3_db_conn.cursor()

    def _execute_only_sqlite3_query(self, query):
        self._sqlite3_cursor.execute(query)
        self._sqlite3_db_conn.commit()

    def _execute_fetchone_sqlite3_query(self, query):
        return self._sqlite3_cursor.execute(query).fetchone()

    def create_sqlite3_table(self, table_name='card'):
        query = """CREATE TABLE IF NOT EXISTS {}(
        id INTEGER PRIMARY KEY,
        number TEXT,
        pin TEXT,
        balance INTEGER DEFAULT 0)""".format(table_name)
        self._execute_only_sqlite3_query(query)

    def _insert_card_details_db(self, card_number, card_pin):
        # sqlite3 connection & table create
        if self._sqlite3_cursor is None:
            self.set_sqlite3_connection_cursor()
            self.create_sqlite3_table()

        # insert card_number & card_pin
        query = 'INSERT INTO card (number, pin, balance) VALUES({}, {}, 0)'.format(card_number, card_pin)
        self._execute_only_sqlite3_query(query)

    def create_account(self):
        # 16-digit credit card numbers
        # Major Industry Identifier (MII) - first digit - 4
        # Issuer Identification Number (IIN) - first six digits - 400000
        # customer account number (seventh digit to the second-to-last digit) - 9/12 digits
        # checksum/ check digit (Luhn algorithm) - last digit

        card_number = self._gen_credit_card_num_luhn_algo()
        card_pin = self._gen_rand_n_digit(4)

        # insert card details into db
        self._insert_card_details_db(card_number, card_pin)

        print('Your card has been created')
        print('Your card number:')
        print(card_number)
        print('Your card PIN:')
        print(card_pin)

    def _check_card_details(self, card_number, card_pin):
        query = 'SELECT number, pin FROM card WHERE number={}'.format(card_number)
        card_details = self._execute_fetchone_sqlite3_query(query)

        if card_details is not None:
            db_card_number, db_card_pin = (card_details[0], card_details[1])
            if card_number == db_card_number and card_pin == db_card_pin:
                return True
        return False

    def _check_balance(self, card_number):
        query = 'SELECT balance FROM card WHERE number={}'.format(card_number)
        return self._execute_fetchone_sqlite3_query(query)[0]

    def _add_income_target(self, target_card_number, income):
        query = 'UPDATE card SET balance = balance + {} where number = {}'.format(income, target_card_number)
        self._execute_only_sqlite3_query(query)

    def _minus_income_user(self, user_card_number, income):
        query = 'UPDATE card SET balance = balance - {} where number = {}'.format(income, user_card_number)
        self._execute_only_sqlite3_query(query)

    def _check_card_number_by_algo(self, target_card_number):
        iin = target_card_number[:6]
        cust_account_number = target_card_number[6:15]
        # print('iin- Cust_account_number - ', iin, cust_account_number)

        valid_target_card_number = self._gen_credit_card_num_luhn_algo(iin, cust_account_number)
        # print('Valid target card number - ', valid_target_card_number)

        if target_card_number != valid_target_card_number:
            print('Probably you made mistake in the card number. Please try again!')
            return False
        return True

    def _check_card_number_db(self, target_card_number):
        query = 'SELECT number FROM card where number={}'.format(target_card_number)
        db_card_number = self._execute_fetchone_sqlite3_query(query)

        if db_card_number is None:
            print('Such a card does not exist.')
            return False
        return True

    def _do_transfer_money(self, user_card_number, balance):
        print('Transfer')
        target_card_number = input('Enter card number:').strip()

        if target_card_number == user_card_number:
            print("You can't transfer money to the same account!")
            return

        if not self._check_card_number_by_algo(target_card_number):
            return
        if not self._check_card_number_db(target_card_number):
            return

        money_transfer = int(input('Enter how much money you want to transfer:'))
        if balance < money_transfer:
            print('Not enough money!')
            return
        else:
            self._add_income_target(target_card_number, money_transfer)
            self._minus_income_user(user_card_number, money_transfer)
            print('Success!')
            return

    def _close_user_account(self, card_number):
        query = 'DELETE FROM card WHERE number={}'.format(card_number)
        self._execute_only_sqlite3_query(query)
        print('The account has been closed!')

    def log_into_account(self):
        card_number = input('Enter your card number:').strip()
        card_pin = input('Enter your PIN:').strip()

        # check card details with database
        if self._check_card_details(card_number, card_pin):
            print('You have successfully logged in!')

            user_transaction = ''
            while user_transaction != '0':
                user_transaction = self._show_login_transactions()
                if user_transaction == '1':  # Balance
                    balance = self._check_balance(card_number)
                    print('Balance: {}'.format(balance))
                elif user_transaction == '2':  # Add income
                    user_income = int(input('Enter income:'))
                    self._add_income_target(card_number, user_income)
                    print('Income was added!')
                elif user_transaction == '3':  # Do transfer
                    balance = self._check_balance(card_number)
                    self._do_transfer_money(card_number, balance)
                elif user_transaction == '4':  # Close account
                    self._close_user_account(card_number)
                elif user_transaction == '5':  # Log out
                    print('You have successfully logged out!')
                    break
                elif user_transaction == '0':  # Exit
                    self.bye_close_db_conn()
        else:
            print('Wrong card number or PIN!')

    @staticmethod
    def _show_login_transactions():
        print('1. Balance')
        print('2. Add income')
        print('3. Do transfer')
        print('4. Close account')
        print('5. Log out')
        print('0. Exit')
        return input()

    def bye_close_db_conn(self):
        if self._sqlite3_db_conn is not None:
            self._sqlite3_db_conn.commit()
            self._sqlite3_db_conn.close()
        print('Bye!')
        quit()


# Run program
simpleBankingSystem = SimpleBankingSystem()
simpleBankingSystem.set_sqlite3_connection_cursor()
simpleBankingSystem.create_sqlite3_table()

while True:
    user_input = simpleBankingSystem.print_welcome_message()

    if user_input == 1:
        simpleBankingSystem.create_account()
    elif user_input == 2:
        simpleBankingSystem.log_into_account()
    elif user_input == 0:
        simpleBankingSystem.bye_close_db_conn()
