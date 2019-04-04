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
   print("3. Merubah Status GTM")
   option = input("Select Number : ")
   if option=='1':
       SurvivalTable = pd.read_csv('SurvivalTable.csv', skiprows = [0], header = None)
       PRS = str(input("PRS Code :"))
       pressure = int(input("Pressure :"))
       flow = int(input("Flow :"))
       capasity = int(input("Capasity GTM :"))
           
       survivaltime = (pressure * (capasity/200)) / flow
       SurvivalTable[PRS] = survivaltime
       SurvivalTable.to_csv('SurvivalTable.csv', index=False)
           
       dataset = pd.read_csv('input.csv', skiprows = [0], header = None)
       dataset = dataset.to_numpy()
       category = {}
       produksi = {}
       Distance = {}
         
       MotherStation = ['SPBG', 'INDOGAS', 'JES', 'PURWAKARTA']
       for i in range(len(dataset)):
           DisMS = {}
           PRSname = dataset[i][0]
           category[PRSname] = dataset[i][1]
           produksi[PRSname] = dataset[i][2]
           DisMS['SPBG'] = float(dataset[i][3]/20.0)
           DisMS['INDOGAS'] = dataset[i][4]/20.0
           DisMS['JES'] = dataset[i][5]/20.0
           DisMS['PURWAKARTA'] = dataset[i][6]/20.0
           Distance[PRSname] = DisMS
       GTMReady = {}
       for i in MotherStation:
           if Distance[PRS][i] == 0.0:
               continue
           if survivaltime > Distance[PRS][i]:
               GTMReady[i] = Distance[PRS][i]
       sorted_x = sorted(GTMReady.items(), key=operator.itemgetter(1))
       c.send(str(next(iter(GTMReady))).encode('utf-8'))
   elif option=='2':
       GTMaster = pd.read_csv('GTM.csv')
       GTM = input("GTM Type :")
       PRS = input("MS Type :")
#       data = np.array([[GTM, PRS]])
#       data = pd.DataFrame(data)
#       GTMinMS= GTMinMS.append(data)
       GTMaster[GTM][1]= PRS
       GTMinMS.to_csv('GTM.csv', index=False)
   elif option=='3':
       GTMaster = pd.read_csv('GTM.csv')
       GTM = input("GTM Type : ")
       Status = input("Status GTM : ")
       if Status == "OUT":
           GTMaster[GTM][1] = "OutMS"
       GTMaster[GTM][2]= Status
       GTMinMS.to_csv('GTM.csv', index=False)
      
   c.close()