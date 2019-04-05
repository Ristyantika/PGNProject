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
    
while(20):
   c, addr = s.accept()
   print("--- Welcome to Our Prototype ---")
   print("1. Input Survival Time Data")
   print("2. Input GTM type to MS")
   print("3. Merubah Status GTM")
   print("4. Keluar DO")
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
       if GTMaster[GTM][0] == 40:
           sizeGTM = "large"
       elif GTMaster[GTM][0] == 5:
            sizeGTM = "small"
       else:
           sizeGTM = "medium"
       Status = input("Status GTM : ")
       GTMaster[GTM][2]= Status
       if Status == "Stand-By":
           PRSReady = {}
           SurvivalTable = pd.read_csv('SurvivalTable.csv')
           for i in dataset[:]["PRS"]:
               if SurvivalTable[i][0] > Distance[i][GTMaster[GTM][1]] and size[i] == sizeGTM and Distance[i][GTMaster[GTM][1]] > 0.0 :
                   PRSReady[i] = SurvivalTable[i][0]
           sorted_x = sorted(PRSReady.items(), key=operator.itemgetter(1))
           minST = sorted_x[0][1]
           Prioritas = {}
           for j in range(len(sorted_x)):
               if sorted_x[j][1] == minST:
                   Prioritas[sorted_x[j][0]] = category[sorted_x[j][0]] * produksi[sorted_x[j][0]]
           sorted_y = sorted(Prioritas.items(), key=operator.itemgetter(1))
       c.send(str(sorted_y[0][0]).encode('utf-8'))
       
   c.close()