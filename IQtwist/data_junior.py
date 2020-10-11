# -*- coding: utf-8 -*-
"""
Created on Fri Oct  9 02:09:04 2020

@author: Mingzhen Ao
"""
from numpy import mean
def average_time(list_):
    all_time=[]
    for element in list_:
        if element!='none':
            all_time.append(element)
    return mean(all_time)
def get_coverage(list_):
    fail_num=0
    for experiment in list_:
        if experiment=='none':
            fail_num+=1
    print((len(list_)-fail_num))
    return (len(list_)-fail_num)/len(list_)
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
junior_IQtwist_choco=[]
junior_IQtwist_chuffed=[]
junior_IQtwist_coinbc=[]
junior_IQtwist_gurobi=[]
junior_IQtwist_izplus=[]
junior_IQtwist_jacop=[]
junior_IQtwist_ortool=[]
junior_IQtwist_picat=[]
junior_IQtwist_yuck=[]
solvers=['choco','Chuffed','Coin-bc','Gurobi','izplus','jacop','Or-tool','picat','Yuck']
for solver in solvers:
    n = 1
    while n<25:
        with open('junior/model'+str(n)+'/'+'model' + str(n) + solver+'.log','r') as log:
            if solver=='choco':
               solver_get_time(log,junior_IQtwist_choco)
            elif solver=='Chuffed':
               solver_get_time(log,junior_IQtwist_chuffed)
            elif solver=='Coin-bc':
               solver_get_time(log,junior_IQtwist_coinbc)
            elif solver=='Gurobi':
               solver_get_time(log,junior_IQtwist_gurobi)
            elif solver=='izplus':
               solver_get_time(log,junior_IQtwist_izplus)
            elif solver=='jacop':
               solver_get_time(log,junior_IQtwist_jacop)
            elif solver=='Or-tool':
               solver_get_time(log,junior_IQtwist_ortool)
            elif solver=='picat':
               solver_get_time(log,junior_IQtwist_picat)
            elif solver=='Yuck':
               solver_get_time(log,junior_IQtwist_yuck)
        n+=1
coverage_choco=get_coverage(junior_IQtwist_choco)
coverage_chuffed=get_coverage(junior_IQtwist_chuffed)
coverage_coinbc=get_coverage(junior_IQtwist_coinbc)
coverage_gurobi=get_coverage(junior_IQtwist_gurobi)
coverage_izplus=get_coverage(junior_IQtwist_izplus)
coverage_jacop=get_coverage(junior_IQtwist_jacop)
coverage_ortool=get_coverage(junior_IQtwist_ortool)
coverage_picat=get_coverage(junior_IQtwist_picat)
coverage_yuck=get_coverage(junior_IQtwist_yuck)
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
print("average time of choco:"+str(average_time(junior_IQtwist_choco)))
print("average time of chuffed:"+str(average_time(junior_IQtwist_chuffed)))
print("average time of coinbc:"+str(average_time(junior_IQtwist_coinbc)))
print("average time of gurobi:"+str(average_time(junior_IQtwist_gurobi)))
print("average time of izplus:"+str(average_time(junior_IQtwist_izplus)))
print("average time of jacop:"+str(average_time(junior_IQtwist_jacop)))
print("average time of ortool:"+str(average_time(junior_IQtwist_ortool)))
print("average time of picat:"+str(average_time(junior_IQtwist_picat)))
print("average time of yuck:"+str(average_time(junior_IQtwist_yuck)))