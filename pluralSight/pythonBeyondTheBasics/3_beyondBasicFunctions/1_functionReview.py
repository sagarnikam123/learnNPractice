# 03_01-Function Review

import socket

def resolve(host):
    return socket.gethostbyname(host)

resolve
resolve('localhost')
resolve('sixty-north.com')
