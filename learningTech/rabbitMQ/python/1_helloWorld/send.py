# send.py

import pika

# establish a connection with RabbitMQ server
connection = pika.BlockingConnection(pika.ConnectionParameters(host='localhost'))
channel = connection.channel()

# creating a queue to which message will be delivered
channel.queue_declare(queue = 'hello')

# exchange - allows us to specify exactly to which queue the message should go
channel.basic_publish(exchange='', routing_key='hello', body='Hello World!')
print("[x] Sent 'Hello World !'")

# flushed out network buffers by closing connection
connection.close()
