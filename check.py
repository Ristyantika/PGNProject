import pandas as pd
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

GTMaster = pd.read_csv('GTM.csv')
GTM = input("GTM Type : ")
Status = input("Status GTM : ")
       
if Status == "StandBy":
    PRSReady = {}
    SurvivalTable = pd.read_csv('SurvivalTable.csv')
    for i in dataset[:]["PRS"]:
        if SurvivalTable[i][0] > Distance[i][GTMaster[GTM][1]] and size[i] == int(GTMaster[GTM][0]) and Distance[i][GTMaster[GTM][1]] > 0.0 :
            PRSReady[i] = SurvivalTable[i][0]
    print(PRSReady)
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
        message = "Survival Time masih Lama"
        print(message)
#        c.send(str(sorted_y[0][0]).encode('utf-8'))
if Status == "OUT":
#    c.send(str(GTMtoPRS).encode('utf-8'))
    GTMaster[GTM][2]= Status
    print(GTMtoPRS)




