# -*- coding: utf-8 -*-
"""
Created on Tue Mar 26 21:44:20 2019

@author: nuzulristy
"""

import pandas as pd
import numpy as np
import operator

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
#    print(dataset[i][3]/20.0)
#    print(PRSname)
    DisMS['INDOGAS'] = dataset[i][4]/20.0
    DisMS['JES'] = dataset[i][5]/20.0
    DisMS['PURWAKARTA'] = dataset[i][6]/20.0
    print(DisMS)
    Distance[PRSname] = DisMS
GTMReady = {}
for i in MotherStation:
    if Distance[PRS][i] == 0.0:
        continue
    if survivaltime > Distance[PRS][i]:
        GTMReady[i] = Distance[PRS][i]
sorted_x = sorted(GTMReady.items(), key=operator.itemgetter(1))
