# receive.py

import pika

# connecting to RabbitMQ server
connection = pika.BlockingConnection(pika.ConnectionParameters(host='localhost'))
channel = connection.channel()

# declaring again queue
channel.queue_declare(queue='hello')

# declariing call back function
def callback(ch, method, properties, body):
    print(' [x] Received %r' %body)

# assigning callback function to RabbitMQ server
channel.basic_consume(callback, queue='hello', no_ack=True)

# starting callbacks - never-ending loop
print(' [*] Waiting for messages. To exit press CTRL + C ')
channel.start_consuming()
