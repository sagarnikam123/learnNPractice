# 20_Raise Exception And Finally

try:
    raise MemoryError('memory error here')
except MemoryError as e:
    print(e)

################################################################################

try:
    raise Exception('Exception here')
except Exception as e:
    print(e)
################################################################################


class Accident(Exception):
    def __init__(self, msg):
        self.msg = msg

    def print_exception(self):
        print('User defined exception:', self.msg)


try:
    raise Accident('crash between two cars')
except Accident as e:
    e.print_exception()
################################################################################


class Accident2(Exception):
    def __init__(self, msg):
        self.msg = msg

    def handle(self):
        print("accident occurred. take the detour")


try:
    raise Accident2('crash between two cars')
except Accident2 as e:
    e.handle()
################################################################################


def process_file():
    try:
        f = open('/home/quanta/git/learnNPractice/youTube/codeBasics/pythonTutorials/data/funny2.txt')
        x = 1/0
    except FileNotFoundError as e:
        print('inside except - file not found')
    finally:
        print('cleaning up file')
        f.close()


process_file()
