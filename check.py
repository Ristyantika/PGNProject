# -*- coding: utf-8 -*-
"""
Created on Tue Mar 26 19:29:43 2019

@author: nuzulristy
"""
import pandas as pd 
import operator

SurvivalTable = pd.read_csv('SurvivalTable.csv', skiprows = [0], header = None)
#print("\n")
PRS = str(input("PRS Code :"))
pressure = int(input("Pressure :"))
flow = int(input("Flow :"))
capasity = int(input("Capasity GTM :"))
survivaltime = (pressure * (capasity/200)) / flow
#data = np.array([[PRS, survivaltime]])
#data = pd.DataFrame(data)
#SurvivalTable= SurvivalTable.append(data)
#SuvTime[PRS] = survivaltime
#SurvivalTable.to_csv('SurvivalTable.csv', index=False)

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

print(next(iter(GTMReady)))
