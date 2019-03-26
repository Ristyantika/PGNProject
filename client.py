# -*- coding: utf-8 -*-
"""
Created on Mon Mar 25 20:57:32 2019

@author: nuzulristy
"""

import socket

s = socket.socket()
host = '127.0.0.1'
port = 12345

s.connect((host, port))
print(s.recv(1024).decode('utf-8'))
s.close()  