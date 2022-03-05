import os
import sys
import requests
from collections import deque
from bs4 import BeautifulSoup
from colorama import Fore, Style


# Text-Based Browser
class TextBasedBrowser(object):
    _page_stack = deque()
    _current_page = None

    @staticmethod
    def take_input():
        return input()

    @staticmethod
    def create_dir(path_dir):
        if not os.path.exists(path_dir):
            os.mkdir(path_dir)

    @staticmethod
    def check_url(url):
        if url.rfind('.') == -1:
            return False
        return True

    @staticmethod
    def find_all_content(soup_object, tag):
        parsed_tag_content = set()
        for tag_line in soup_object.find_all(tag):
            con = tag_line.get_text().strip()
            parsed_tag_content.add(con)
            if tag == 'a':
                print(Fore.BLUE, con)
                print(Style.RESET_ALL, end='')
            else:
                print(con)
        return parsed_tag_content

    def parse_web_page(self, web_page_content):
        parsed_page = set()
        soup = BeautifulSoup(web_page_content, 'html.parser')

        head_soup = soup.find('head')
        parsed_page.update(self.find_all_content(head_soup, 'title'))
        parsed_page.update(self.find_all_content(head_soup, 'h1'))

        body_soup = soup.find('body')
        parsed_page.update(self.find_all_content(body_soup, 'h1'))
        parsed_page.update(self.find_all_content(body_soup, 'h2'))
        parsed_page.update(self.find_all_content(body_soup, 'h3'))
        parsed_page.update(self.find_all_content(body_soup, 'h4'))
        parsed_page.update(self.find_all_content(body_soup, 'h5'))
        parsed_page.update(self.find_all_content(body_soup, 'h6'))
        parsed_page.update(self.find_all_content(body_soup, 'p'))
        parsed_page.update(self.find_all_content(body_soup, 'a'))
        parsed_page.update(self.find_all_content(body_soup, 'ul'))
        parsed_page.update(self.find_all_content(body_soup, 'ol'))
        parsed_page.update(self.find_all_content(body_soup, 'li'))
        return parsed_page

    @staticmethod
    def get_web_page_text(url):
        return requests.get(url).text.strip()

    @staticmethod
    def make_file_path(path_dir, file_name):
        return path_dir + '/' + file_name

    def check_file_present(self, path_dir, file_name):
        single_file_path = self.make_file_path(path_dir, file_name)
        return os.path.exists(single_file_path)

    def create_file(self, path_dir, file_name, content_file):
        file_path_write = self.make_file_path(path_dir, file_name)
        with open(file_path_write, mode='w') as f:
            f.write(content_file)

    @property
    def current_page(self):
        return self._current_page

    @property
    def page_stack(self):
        return self._page_stack

    @current_page.setter
    def current_page(self, value):
        self._current_page = value


# Running program
textBasedBrowser = TextBasedBrowser()
dir_path = sys.argv[1]
textBasedBrowser.create_dir(dir_path)

while True:
    user_input = textBasedBrowser.take_input().strip()
    if user_input == 'exit':
        quit()
    if user_input == 'back':
        if len(textBasedBrowser.page_stack) >= 1:
            content_variable = textBasedBrowser.page_stack.pop()
            print(content_variable)
        else:
            continue
    elif textBasedBrowser.check_url(user_input):
        complete_url = None
        extracted_file_name = None

        if not user_input.startswith('http'):
            complete_url = 'https://' + user_input

        # removes .org .com .in
        extracted_file_name = user_input.split('.')[0]
        if extracted_file_name.find('//') != -1:
            extracted_file_name = extracted_file_name.split('//')[1]
        if textBasedBrowser.current_page is None:
            textBasedBrowser.current_page = extracted_file_name

        web_text = textBasedBrowser.get_web_page_text(complete_url)
        parsed_set = textBasedBrowser.parse_web_page(web_page_content=web_text)
        file_content = ''
        for line in parsed_set:
            file_content += line
        textBasedBrowser.create_file(dir_path, extracted_file_name, file_content)
        extracted_file_name = file_content
        textBasedBrowser.page_stack.append(extracted_file_name)
    else:
        print('Error: Incorrect URL')
