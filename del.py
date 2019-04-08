# -*- coding: utf-8 -*-
"""
Created on Tue Mar 26 21:44:20 2019

@author: nuzulristy
"""

import pandas as pd
import numpy as np
import operator

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

PRS = str(input("PRS Code :"))
SurvivalTable = pd.read_csv('SurvivalTable.csv')
survivaltime = SurvivalTable[PRS][0]
print(survivaltime)

GTMaster = pd.read_csv('GTM.csv')
GTMReady = {}
for i in GTMaster:
    if GTMaster[i][2] == 'StandBy' and int(GTMaster[i][0]) == size[PRS] and survivaltime > Distance[PRS][GTMaster[i][1]]:
        GTMReady[i] = Distance[PRS][GTMaster[i][1]]
sorted_x = sorted(GTMReady.items(), key=operator.itemgetter(1))
print(sorted_x[0][0])
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
