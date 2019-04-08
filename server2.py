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
dataset = pd.read_csv('input.csv')
category = {}
produksi = {}
Distance = {}
size = {}
for i in range(len(dataset["PRS"])):
    DisMS = {}
    PRSname = dataset["PRS"][i]
    category[PRSname] = dataset["CATEGORY"][i]
    produksi[PRSname] = dataset["PRODUCT"][i]
    DisMS['SPBG'] = dataset["SPBG"][i]/20.0
    DisMS['INDOGAS'] = dataset["INDOGAS"][i]/20.0
    DisMS['JES'] = dataset["JES"][i]/20.0
    DisMS['PURWAKARTA'] = dataset["PURWAKARTA"][i]/20.0
    size[PRSname] = dataset["SIZE"][i]
    Distance[PRSname] = DisMS
    
while True:
   c, addr = s.accept()
   print("--- Welcome to Our Prototype ---")
   print("1. Input Survival Time Data")
   print("2. Input GTM type to MS")
   print("3. Merubah Status GTM")
   print("4. Request GTM for PRS")
   option = input("Select Number : ")
   if option=='1':
       SurvivalTable = pd.read_csv('SurvivalTable.csv')
       PRS = str(input("PRS Code :"))
       pressure = int(input("Pressure :"))
       flow = int(input("Flow :"))
       capasity = int(input("Capasity GTM :"))
           
       survivaltime = (pressure * (capasity/200)) / flow
       SurvivalTable[PRS] += survivaltime
       SurvivalTable.to_csv('SurvivalTable.csv', index=False)
       
   elif option=='2':
       GTMaster = pd.read_csv('GTM.csv')
       GTM = input("GTM Type :")
       MS = input("MS Type :")
       GTMaster[GTM][1]= MS
       GTMaster.to_csv('GTM.csv', index=False)
       
   elif option=='3':
       GTMaster = pd.read_csv('GTM.csv')
       GTM = input("GTM Type : ")
#       if GTMaster[GTM][0] == 40:
#           sizeGTM = "large"
#       elif GTMaster[GTM][0] == 5:
#            sizeGTM = "small"
#       else:
#           sizeGTM = "medium"
       Status = input("Status GTM : ")
       if Status == "OUT":
           GTMtoPRS = GTMaster[GTM][3]
           
       if Status == "Stand-By":
           PRSReady = {}
           SurvivalTable = pd.read_csv('SurvivalTable.csv')
           for i in dataset[:]["PRS"]:
               if SurvivalTable[i][0] > Distance[i][GTMaster[GTM][1]] and size[i] == GTMaster[GTM][0] and Distance[i][GTMaster[GTM][1]] > 0.0 :
                   PRSReady[i] = SurvivalTable[i][0]
           sorted_x = sorted(PRSReady.items(), key=operator.itemgetter(1))
           minST = sorted_x[0][1]
           Prioritas = {}
           for j in range(len(sorted_x)):
               if sorted_x[j][1] == minST:
                   Prioritas[sorted_x[j][0]] = category[sorted_x[j][0]] * produksi[sorted_x[j][0]]
           sorted_y = sorted(Prioritas.items(), key=operator.itemgetter(1))
           if SurvivalTable[i][0] - Distance[i][GTMaster[GTM][1]] < 1.0:
               Status = "OUT"
               GTMtoPRS = sorted_y[0][0]
           else:
               GTMaster[GTM][3] = sorted_y[0][0]
               c.send(str(sorted_y[0][0]).encode('utf-8'))
               
       if Status == "OUT":
           c.send(str(GTMtoPRS).encode('utf-8'))
       GTMaster[GTM][2]= Status
       GTMaster.to_csv('GTM.csv', index=False)
   elif option=='4':
       PRS = str(input("PRS Code :"))
       SurvivalTable = pd.read_csv('SurvivalTable.csv')
       survivaltime = SurvivalTable[PRS][0]
       GTMaster = pd.read_csv('GTM.csv')
       GTMReady = {}
       for i in GTMaster:
           if GTMaster[i][2] == 'StandBy' and int(GTMaster[i][0]) == size[PRS] and survivaltime > Distance[PRS][GTMaster[i][1]]:
               GTMReady[i] = Distance[PRS][GTMaster[i][1]]
       sorted_x = sorted(GTMReady.items(), key=operator.itemgetter(1))
       GTMaster[sorted_x[0][0]][2] = 'OUT'
       c.send(str(sorted_x[0][0]).encode('utf-8'))
       GTMaster.to_csv('GTM.csv', index=False)
   c.close()