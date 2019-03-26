# -*- coding: utf-8 -*-
"""
Created on Mon Mar 25 20:37:15 2019

@author: nuzulristy
"""

import socket
import pandas as pd
import numpy as np
import operator

s = socket.socket()
host = '127.0.0.1'
port = 12345
s.bind((host, port))

s.listen(5)
SuvTime = {}
while True:
   c, addr = s.accept()
   print("--- Welcome to Our Prototype ---")
   print("1. Input Survival Time Data")
   print("2. Input GTM type to MS")
   option = input("Select Number : ")
   if option=='1':
       SurvivalTable = pd.read_csv('SurvivalTable.csv', skiprows = [0], header = None)
       #print("\n")
       PRS = str(input("PRS Code :"))
       pressure = int(input("Pressure :"))
       flow = int(input("Flow :"))
       capasity = int(input("Capasity GTM :"))
       survivaltime = (pressure * (capasity/200)) / flow
       data = np.array([[PRS, survivaltime]])
       data = pd.DataFrame(data)
       SurvivalTable= SurvivalTable.append(data)
       SuvTime[PRS] = survivaltime
       SurvivalTable.to_csv('SurvivalTable.csv', index=False)
       
       dataset = pd.read_csv('input.csv', skiprows = [0], header = None)
       dataset = dataset.to_numpy()
       category = {}
       produksi = {}
       Distance = {}
       DisMS = {}
       for i in range(len(dataset)):
           PRSname = dataset[i][0]
           category[PRSname] = dataset[i][1]
           produksi[PRSname] = dataset[i][2]
           DisMS['SPBG'] = int(dataset[i][3]/20)
           DisMS['INDOGAS'] = int(dataset[i][4]/20)
           DisMS['JES'] = int(dataset[i][5]/20)
           DisMS['PURWAKARTA'] = int(dataset[i][6]/20)
           Distance[PRSname] = DisMS
       GTMinMS = pd.read_csv('GTMinMS.csv', skiprows = [0], header = None)
       row, column = GTMinMS.shape
       GTMinMS = GTMinMS.to_numpy()
       GTMReady = {}
       for i in range(len(GTMinMS)):
           if Distance[PRS][GTMinMS[i][1]] == 0.0:
               continue
           if survivaltime > Distance[PRS][GTMinMS[i][1]]:
               GTMReady[GTMinMS[i][1]] = Distance[PRS][GTMinMS[i][1]]
       sorted_x = sorted(GTMReady.items(), key=operator.itemgetter(1))
       c.send(str(next(iter(GTMReady))).encode('utf-8'))
   else:
       GTMinMS = pd.read_csv('GTMinMS.csv', skiprows = [0], header = None)
       GTM = input("GTM Type :")
       PRS = input("MS Type :")
       data = np.array([[GTM, PRS]])
       data = pd.DataFrame(data)
       GTMinMS= GTMinMS.append(data)
       GTMinMS.to_csv('GTMinMS.csv', index=False)
   c.close()