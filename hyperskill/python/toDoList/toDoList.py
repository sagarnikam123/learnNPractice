# To-Do List

from sqlalchemy import create_engine
from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import Column, Integer, String, Date
from sqlalchemy.orm import sessionmaker
from datetime import datetime, timedelta


class DBCon:
    Base = declarative_base()

    def db_session(self):
        engine = create_engine('sqlite:///todo.db?check_same_thread=false')
        self.Base.metadata.create_all(engine)
        Session = sessionmaker(bind=engine)
        session = Session()
        session.commit()
        return session


class Table(DBCon.Base):
    __tablename__ = 'task'
    id = Column(Integer, primary_key=True)
    task = Column(String)
    deadline = Column(Date, default=datetime.today().date())

    def __repr__(self):
        return 'id={}, task={}, deadline={}'.format(self.id, self.task, self.deadline)


class ToDoList:
    _session = None

    def __init__(self, session):
        self._session = session

    def add_single_row(self, single_row_data):
        self._session.add(single_row_data)
        self._session.commit()

    def get_all_table_rows_by_date(self, day):
        rows = self._session.query(Table).filter(Table.deadline == day).all()
        self._session.commit()
        return rows

    def get_all_tasks(self):
        rows = self._session.query(Table.task, Table.deadline).order_by(Table.deadline).all()
        self._session.commit()
        return rows

    def get_all_tasks_by_date(self):
        day = datetime.today().date()
        rows = self._session.query(Table.task, Table.deadline).filter(Table.deadline < day).order_by(
            Table.deadline).all()
        self._session.commit()
        return rows

    def delete_row_by_task_date(self, task, date):
        self._session.query(Table).filter(Table.task == task, Table.deadline == date).delete()
        self._session.commit()
        return True

    @staticmethod
    def take_input():
        print("1) Today's tasks")
        print("2) Week's tasks")
        print('3) All tasks')
        print('4) Missed tasks')
        print('5) Add task')
        print('6) Delete task')
        print('0) Exit')
        return input()

    @staticmethod
    def take_task_input():
        print('Enter task')
        task = input()
        print('Enter deadline')  # YYYY-MM-DD
        deadline = input()
        return task, deadline

    def print_today_task(self, day=None, week_task=False):
        if day is None:
            day = datetime.today().date()
        which_day = 'Today'
        if week_task:
            which_day = day.strftime("%A")
        print('{} {} {}:'.format(which_day, day.day, day.strftime('%b')))
        table_rows = self.get_all_table_rows_by_date(day)
        if len(table_rows) >= 1:
            for id_n, row in enumerate(table_rows):
                print('{}. {}'.format(id_n + 1, row.task))
        else:
            print('Nothing to do!')
        print()

    def print_week_task(self):
        today = datetime.today().date()
        for day_diff in range(7):
            req_date = today + timedelta(days=day_diff)
            self.print_today_task(req_date, week_task=True)

    def print_all_tasks(self):
        task_rows = self.get_all_tasks()
        if len(task_rows) >= 1:
            print('All tasks:')
            for id_n, task_row in enumerate(task_rows):
                day = task_row[1]
                print('{}. {}. {} {}'.format(id_n + 1, task_row[0], day.day, day.strftime('%b')))

    def add_tasks(self):
        input_task, deadline = self.take_task_input()
        task_row = Table(task=input_task, deadline=datetime.strptime(deadline, '%Y-%m-%d'))
        self.add_single_row(task_row)
        print('The task has been added!')

    def missed_tasks(self):
        task_rows = self.get_all_tasks_by_date()
        if len(task_rows) >= 1:
            print('Missed tasks:')
            for id_n, task_row in enumerate(task_rows):
                day = task_row[1]
                print('{}. {}. {} {}'.format(id_n + 1, task_row[0], day.day, day.strftime('%b')))
            print()

    def delete_task(self):
        task_rows = self.get_all_tasks_by_date()
        if len(task_rows) >= 1:
            print('Chose the number of the task you want to delete:')
            task_info = dict()
            for id_n, task_row in enumerate(task_rows):
                task = task_row[0]
                day = task_row[1]
                task_id = id_n + 1
                task_info[task_id] = [task, day]
                print('{}. {}. {} {}'.format(task_id, task, day.day, day.strftime('%b')))
            task_id = int(input().strip())
            task_to_delete = task_info[task_id][0]
            task_date = task_info[task_id][1]
            if self.delete_row_by_task_date(task_to_delete, task_date):
                print('The task has been deleted!')
        else:
            print('Nothing to delete')


# Run program
db_sess = DBCon().db_session()
toDoList = ToDoList(db_sess)

while True:
    work_input = toDoList.take_input()
    if work_input == '1':
        toDoList.print_today_task()
    elif work_input == '2':
        toDoList.print_week_task()
    elif work_input == '3':
        toDoList.print_all_tasks()
    elif work_input == '4':
        toDoList.missed_tasks()
    elif work_input == '5':
        toDoList.add_tasks()
    elif work_input == '6':
        toDoList.delete_task()
    elif work_input == '0':
        print('Bye!')
        quit()
