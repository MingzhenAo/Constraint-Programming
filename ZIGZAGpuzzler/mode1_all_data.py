# -*- coding: utf-8 -*-
"""
Created on Sun Oct 11 03:41:19 2020

@author: Mingzhen Ao
"""
from numpy import mean
def get_coverage(list_):
    fail_num=0
    for experiment in list_:
        if experiment=='none':
            fail_num+=1
    return (len(list_)-fail_num)/len(list_)
def average_time(list_):
    all_time=[]
    for element in list_:
        if element!='none':
            all_time.append(element)
    return mean(all_time)
def solver_get_time(csvfile1,solver_list):
   for line in csvfile1:
      if "the excute time" in line:
         time=line.split(':')[1]
         solver_list.append(float(time))
      elif "timeout-30minutes" in line:
         solver_list.append("none")
      elif "time elapsed:" in line:
         time=line.split(':')[1]
         time=time.split('s')[0]
         solver_list.append(float(time))
         break
   return solver_list
alldifficulities_Ziazagplayingmode1_choco=[]
alldifficulities_Ziazagplayingmode1_chuffed=[]
alldifficulities_Ziazagplayingmode1_coinbc=[]
alldifficulities_Ziazagplayingmode1_gurobi=[]
alldifficulities_Ziazagplayingmode1_izplus=[]
alldifficulities_Ziazagplayingmode1_jacop=[]
alldifficulities_Ziazagplayingmode1_ortool=[]
alldifficulities_Ziazagplayingmode1_picat=[]
alldifficulities_Ziazagplayingmode1_yuck=[]
solvers=['choco','chuffed','Coin-bc','Gurobi','izplus','jacop','Or-tool','picat','Yuck']
difficulties=['start','junior','expert','master','wizard']
for difficulty in difficulties:
   for solver in solvers:
      n = 1
      while n<9:
        with open("playingmode1/"+difficulty+'/model'+str(n)+'/'+'model' + str(n) + solver+'.log','r') as log:
            if solver=='choco':
               solver_get_time(log,alldifficulities_Ziazagplayingmode1_choco)
            elif solver=='chuffed':
               solver_get_time(log,alldifficulities_Ziazagplayingmode1_chuffed)
            elif solver=='Coin-bc':
               solver_get_time(log,alldifficulities_Ziazagplayingmode1_coinbc)
            elif solver=='Gurobi':
               solver_get_time(log,alldifficulities_Ziazagplayingmode1_gurobi)
            elif solver=='izplus':
               solver_get_time(log,alldifficulities_Ziazagplayingmode1_izplus)
            elif solver=='jacop':
               solver_get_time(log,alldifficulities_Ziazagplayingmode1_jacop)
            elif solver=='Or-tool':
               solver_get_time(log,alldifficulities_Ziazagplayingmode1_ortool)
            elif solver=='picat':
               solver_get_time(log,alldifficulities_Ziazagplayingmode1_picat)
            elif solver=='Yuck':
               solver_get_time(log,alldifficulities_Ziazagplayingmode1_yuck)
        n+=1
coverage_choco=get_coverage(alldifficulities_Ziazagplayingmode1_choco)
coverage_chuffed=get_coverage(alldifficulities_Ziazagplayingmode1_chuffed)
coverage_coinbc=get_coverage(alldifficulities_Ziazagplayingmode1_coinbc)
coverage_gurobi=get_coverage(alldifficulities_Ziazagplayingmode1_gurobi)
coverage_izplus=get_coverage(alldifficulities_Ziazagplayingmode1_izplus)
coverage_jacop=get_coverage(alldifficulities_Ziazagplayingmode1_jacop)
coverage_ortool=get_coverage(alldifficulities_Ziazagplayingmode1_ortool)
coverage_picat=get_coverage(alldifficulities_Ziazagplayingmode1_picat)
coverage_yuck=get_coverage(alldifficulities_Ziazagplayingmode1_yuck)
print("coverage of chocho:"+str(coverage_choco))
print("coverage of chuffed:"+str(coverage_chuffed))
print("coverage of coinbc:"+str(coverage_coinbc))
print("coverage of gurobi:"+str(coverage_gurobi))
print("coverage of izplus:"+str(coverage_izplus))
print("coverage of jacop:"+str(coverage_jacop))
print("coverage of ortool:"+str(coverage_ortool))
print("coverage of picat:"+str(coverage_picat))
print("coverage of yuck:"+str(coverage_yuck))
print('   ')
print('   ')
print("average time of choco:"+str(average_time(alldifficulities_Ziazagplayingmode1_choco)))
print("average time of chuffed:"+str(average_time(alldifficulities_Ziazagplayingmode1_chuffed)))
print("average time of coinbc:"+str(average_time(alldifficulities_Ziazagplayingmode1_coinbc)))
print("average time of gurobi:"+str(average_time(alldifficulities_Ziazagplayingmode1_gurobi)))
print("average time of izplus:"+str(average_time(alldifficulities_Ziazagplayingmode1_izplus)))
print("average time of jacop:"+str(average_time(alldifficulities_Ziazagplayingmode1_jacop)))
print("average time of ortool:"+str(average_time(alldifficulities_Ziazagplayingmode1_ortool)))
print("average time of picat:"+str(average_time(alldifficulities_Ziazagplayingmode1_picat)))
print("average time of yuck:"+str(average_time(alldifficulities_Ziazagplayingmode1_yuck)))