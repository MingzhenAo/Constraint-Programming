# -*- coding: utf-8 -*-
"""
Created on Mon Oct 12 14:40:24 2020

@author: Mingzhen Ao
"""

from numpy import mean

def average_time(list_):
    """
    This  function aims to get the average number of the numbers in list_.
    
    Parameters
    ----------
    list_ : list
        A list contains float number and 'none'

    Returns
    -------
    average_time : float
        the mean of all the float number in the list_ 

    """
    all_time=[]
    for element in list_:
        if element!='none':
            all_time.append(element)
    average_time=mean(all_time)
    return average_time

def cal_solved_case(list_):
    """
    This function aims to calculate the number of solved cases in list_.
    
    Parameters
    ----------
    list_ : list
        A list contains float number and 'none'

    Returns
    -------
    solved_case : int
        The number of solved cases

    """
    fail_num=0
    for experiment in list_:
        if experiment=='none':
            fail_num+=1
    solved_case=(len(list_)-fail_num)
    return solved_case

def get_coverage(list_):
    """
    This  function aims to get the coverage of the numbers in list_.
    
    Parameters
    ----------
    list_ : list
        A list contains float number and 'none'

    Returns
    -------
    coverage : "{:.2%}".format(float)
        The percentage of solved cases in list_ and format percentage to 2 decimal places.

    """
    coverage=cal_solved_case(list_)/len(list_)
    return "{:.2%}".format(coverage)

def solver_get_time(logfile,solver_list1):
    """
    This function aims to add the excution time or timeout in solver_list1 
    and return it as solver_list2.
    
    Parameters
    ----------
    logfile : .log 
        a log file which contains the excution time or timeout information
    solver_list1 : list
        a list store the excution times

    Returns
    -------
    solver_list2 : list
        a list store which contains all elements in solver_list1 and the excution times 
        or timeout information in logfile

    """
    for line in logfile:
      if "the excute time" in line:
         time=line.split(':')[1]
         solver_list1.append(float(time))
      elif "timeout-30minutes" in line:
         solver_list1.append("none")
      elif "time elapsed:" in line:
         time=line.split(':')[1]
         time=time.split('s')[0]
         solver_list1.append(float(time))
         break
    solver_list2=solver_list1
    return solver_list2

def get_solvedcases_coverage_and_averagetime(difficulty):
    """
    This function aims to print the number of solved cases for 
    each solver, coverage, and Overall average time in the corresponding difficulty,
    Parameters
    ----------
    difficulty : String
        The difficulty "start", "junior", "expert", "master" or "wizard".

    Returns
    -------
    None.

    """
    ZigZag_Playingmode1_choco=[]
    ZigZag_Playingmode1_chuffed=[]
    ZigZag_Playingmode1_coinbc=[]
    ZigZag_Playingmode1_gurobi=[]
    ZigZag_Playingmode1_izplus=[]
    ZigZag_Playingmode1_jacop=[]
    ZigZag_Playingmode1_ortool=[]
    ZigZag_Playingmode1_picat=[]
    ZigZag_Playingmode1_yuck=[]
    solvers=['choco','chuffed','Coin-bc','Gurobi','izplus','jacop','Or-tool','picat','Yuck']
    for solver in solvers:
      n = 1
      while n<9:
        with open("playingmode1/"+difficulty+'/model'+str(n)+'/'+'model' + str(n) + solver+'.log','r') as log:
            if solver=='choco':
               solver_get_time(log,ZigZag_Playingmode1_choco)
            elif solver=='chuffed':
               solver_get_time(log,ZigZag_Playingmode1_chuffed)
            elif solver=='Coin-bc':
               solver_get_time(log,ZigZag_Playingmode1_coinbc)
            elif solver=='Gurobi':
               solver_get_time(log,ZigZag_Playingmode1_gurobi)
            elif solver=='izplus':
               solver_get_time(log,ZigZag_Playingmode1_izplus)
            elif solver=='jacop':
               solver_get_time(log,ZigZag_Playingmode1_jacop)
            elif solver=='Or-tool':
               solver_get_time(log,ZigZag_Playingmode1_ortool)
            elif solver=='picat':
               solver_get_time(log,ZigZag_Playingmode1_picat)
            elif solver=='Yuck':
               solver_get_time(log,ZigZag_Playingmode1_yuck)
        n+=1
    print("The number of solved cases for choco in "+difficulty+": "+str(cal_solved_case(ZigZag_Playingmode1_choco)))
    print("The number of solved cases for chuffed in "+difficulty+": "+str(cal_solved_case(ZigZag_Playingmode1_chuffed)))
    print("The number of solved cases for coinbc in "+difficulty+": "+str(cal_solved_case(ZigZag_Playingmode1_coinbc)))
    print("The number of solved cases for gurobi in "+difficulty+": "+str(cal_solved_case(ZigZag_Playingmode1_gurobi)))
    print("The number of solved cases for izplus in "+difficulty+": "+str(cal_solved_case(ZigZag_Playingmode1_izplus)))
    print("The number of solved cases for jacop in "+difficulty+": "+str(cal_solved_case(ZigZag_Playingmode1_jacop)))
    print("The number of solved cases for ortool in "+difficulty+": "+str(cal_solved_case(ZigZag_Playingmode1_ortool)))
    print("The number of solved cases for picat in "+difficulty+": "+str(cal_solved_case(ZigZag_Playingmode1_picat)))
    print("The number of solved cases for yuck in "+difficulty+": "+str(cal_solved_case(ZigZag_Playingmode1_yuck)))
    print("Coverage of choco in "+difficulty+": "+str(get_coverage(ZigZag_Playingmode1_choco)))
    print("Coverage of chuffed in "+difficulty+": "+str(get_coverage(ZigZag_Playingmode1_chuffed)))
    print("Coverage of coinbc in "+difficulty+": "+str(get_coverage(ZigZag_Playingmode1_coinbc)))
    print("Coverage of gurobi in "+difficulty+": "+str(get_coverage(ZigZag_Playingmode1_gurobi)))
    print("Coverage of izplus in "+difficulty+": "+str(get_coverage(ZigZag_Playingmode1_izplus)))
    print("Coverage of jacop in "+difficulty+": "+str(get_coverage(ZigZag_Playingmode1_jacop)))
    print("Coverage of ortool in "+difficulty+": "+str(get_coverage(ZigZag_Playingmode1_ortool)))
    print("Coverage of picat in "+difficulty+": "+str(get_coverage(ZigZag_Playingmode1_picat)))
    print("Coverage of yuck in "+difficulty+": "+str(get_coverage(ZigZag_Playingmode1_yuck)))
    print("Average time of choco in "+difficulty+": "+str(average_time(ZigZag_Playingmode1_choco)))
    print("Average time of chuffed in "+difficulty+": "+str(average_time(ZigZag_Playingmode1_chuffed)))
    print("Average time of coinbc in "+difficulty+": "+str(average_time(ZigZag_Playingmode1_coinbc)))
    print("Average time of gurobi in "+difficulty+": "+str(average_time(ZigZag_Playingmode1_gurobi)))
    print("Average time of izplus in "+difficulty+": "+str(average_time(ZigZag_Playingmode1_izplus)))
    print("Average time of jacop in "+difficulty+": "+str(average_time(ZigZag_Playingmode1_jacop)))
    print("Average time of ortool in "+difficulty+": "+str(average_time(ZigZag_Playingmode1_ortool)))
    print("Average time of picat in "+difficulty+": "+str(average_time(ZigZag_Playingmode1_picat)))
    print("Average time of yuck in "+difficulty+": "+str(average_time(ZigZag_Playingmode1_yuck)))
def get_overall_solvedcases_coverage_and_averagetime():
    """
    This function aims to print the overall number of solved cases for 
    each solver, overallcoverage, and overallOverall average time.
    Parameters

    Returns
    -------
    None.

    """
    ZigZag_Playingmode1_choco=[]
    ZigZag_Playingmode1_chuffed=[]
    ZigZag_Playingmode1_coinbc=[]
    ZigZag_Playingmode1_gurobi=[]
    ZigZag_Playingmode1_izplus=[]
    ZigZag_Playingmode1_jacop=[]
    ZigZag_Playingmode1_ortool=[]
    ZigZag_Playingmode1_picat=[]
    ZigZag_Playingmode1_yuck=[]
    solvers=['choco','chuffed','Coin-bc','Gurobi','izplus','jacop','Or-tool','picat','Yuck']
    difficulties=['start','junior','expert','master','wizard']
    for difficulty in difficulties:
        for solver in solvers:
           n = 1
           while n<9:
             with open("playingmode1/"+difficulty+'/model'+str(n)+'/'+'model' + str(n) + solver+'.log','r') as log:
                 if solver=='choco':
                    solver_get_time(log,ZigZag_Playingmode1_choco)
                 elif solver=='chuffed':
                    solver_get_time(log,ZigZag_Playingmode1_chuffed)
                 elif solver=='Coin-bc':
                    solver_get_time(log,ZigZag_Playingmode1_coinbc)
                 elif solver=='Gurobi':
                    solver_get_time(log,ZigZag_Playingmode1_gurobi)
                 elif solver=='izplus':
                    solver_get_time(log,ZigZag_Playingmode1_izplus)
                 elif solver=='jacop':
                    solver_get_time(log,ZigZag_Playingmode1_jacop)
                 elif solver=='Or-tool':
                    solver_get_time(log,ZigZag_Playingmode1_ortool)
                 elif solver=='picat':
                    solver_get_time(log,ZigZag_Playingmode1_picat)
                 elif solver=='Yuck':
                    solver_get_time(log,ZigZag_Playingmode1_yuck)
             n+=1
    print("The overall number of solved cases for choco:"+str(cal_solved_case(ZigZag_Playingmode1_choco)))
    print("The overall number of solved cases for chuffed:"+str(cal_solved_case(ZigZag_Playingmode1_chuffed)))
    print("The overall number of solved cases for coinbc:"+str(cal_solved_case(ZigZag_Playingmode1_coinbc)))
    print("The overall number of solved cases for gurobi:"+str(cal_solved_case(ZigZag_Playingmode1_gurobi)))
    print("The overall number of solved cases for izplus:"+str(cal_solved_case(ZigZag_Playingmode1_izplus)))
    print("The overall number of solved cases for jacop:"+str(cal_solved_case(ZigZag_Playingmode1_jacop)))
    print("The overall number of solved cases for ortool:"+str(cal_solved_case(ZigZag_Playingmode1_ortool)))
    print("The overall number of solved cases for picat:"+str(cal_solved_case(ZigZag_Playingmode1_picat)))
    print("The overall number of solved cases for yuck:"+str(cal_solved_case(ZigZag_Playingmode1_yuck)))
    print("Overall coverage of choco:"+str(get_coverage(ZigZag_Playingmode1_choco)))
    print("Overall coverage of chuffed:"+str(get_coverage(ZigZag_Playingmode1_chuffed)))
    print("Overall coverage of coinbc:"+str(get_coverage(ZigZag_Playingmode1_coinbc)))
    print("Overall coverage of gurobi:"+str(get_coverage(ZigZag_Playingmode1_gurobi)))
    print("Overall coverage of izplus:"+str(get_coverage(ZigZag_Playingmode1_izplus)))
    print("Overall coverage of jacop:"+str(get_coverage(ZigZag_Playingmode1_jacop)))
    print("Overall coverage of ortool:"+str(get_coverage(ZigZag_Playingmode1_ortool)))
    print("Overall coverage of picat:"+str(get_coverage(ZigZag_Playingmode1_picat)))
    print("Overall coverage of yuck:"+str(get_coverage(ZigZag_Playingmode1_yuck)))
    print("Overall average time of choco:"+str(average_time(ZigZag_Playingmode1_choco)))
    print("Overall average time of chuffed:"+str(average_time(ZigZag_Playingmode1_chuffed)))
    print("Overall average time of coinbc:"+str(average_time(ZigZag_Playingmode1_coinbc)))
    print("Overall average time of gurobi:"+str(average_time(ZigZag_Playingmode1_gurobi)))
    print("Overall average time of izplus:"+str(average_time(ZigZag_Playingmode1_izplus)))
    print("Overall average time of jacop:"+str(average_time(ZigZag_Playingmode1_jacop)))
    print("Overall average time of ortool:"+str(average_time(ZigZag_Playingmode1_ortool)))
    print("Overall average time of picat:"+str(average_time(ZigZag_Playingmode1_picat)))
    print("Overall average time of yuck:"+str(average_time(ZigZag_Playingmode1_yuck)))