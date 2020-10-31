# -*- coding: utf-8 -*-
"""
Created on Mon Oct 12 18:01:02 2020

@author: Mingzhen Ao
"""
from subprocess import STDOUT, check_output
import time
solvers=['picat','choco','jacop','Chuffed','Yuck','Or-tool','Coin-bc','Gurobi']
def run_solvers(playingmode,difficulty):
    """
    This function aims to use the 8 solvers in solvers list 
    to solver the models for corresponding difficulty and log the results.

    Parameters
    ----------
    difficulty : String
        "start", "junior", "expert", "master" or "wizard"

    Returns
    -------
    None.

    """
    n = 1
    while n<9:
       name='model'+str(n)+'.mzn'
       for solver in solvers:
               file = open(playingmode+'/'+difficulty+'/model'+str(n)+'/'+'model' + str(n) + solver+'.log', 'w')
               if solver=='picat':
                   begin=time.time()
                   command ="timeout 1800 picat interface/fzn_picat_sat.pi "+'playingmode1/'+difficulty+"/model"+str(n)+'/model'+str(n)+".fzn"
               elif solver=='jacop':
                   begin=time.time()
                   command = "java -cp interface/jacop-4.7.0.jar org.jacop.fz.Fz2jacop "+'playingmode1/'+difficulty+"/model"+str(n)+'/model'+str(n)+".fzn"
               elif solver=='choco':
                   begin = time.time()
                   command ="java -cp interface/choco-parsers-4.10.3-jar-with-dependencies.jar org.chocosolver.parser.flatzinc.ChocoFZN "+'playingmode1/'+difficulty+"/model"+str(n)+'/model'+str(n)+".fzn"
               else:
                   command = 'timeout 1800 minizinc.exe --solver ' + solver + " " +'playingmode1/'+ difficulty+'/model'+str(n)+'/'+name + " --output-time --sac"
               try:
                  text= check_output(command, stderr=STDOUT, timeout=1800,shell=True)
                  text_string = text.decode(encoding='UTF-8')
                  file.write(text_string)
                  if (solver=='jacop') or (solver=='choco') or (solver=='picat'):
                          end = time.time()
                          file.write("the excute time:"+str(end-begin))
               except Exception:
                  file.write('timeout-30minutes\n')
       n += 1
"""
The below codes aims to solver all models and log corresponding results
"""
#playingmode1
run_solvers('playingmode1','start')
run_solvers('playingmode1','junior')
run_solvers('playingmode1','expert')
run_solvers('playingmode1','master')
run_solvers('playingmode1','wizard')
#playingmode2
run_solvers('playingmode2','start')
run_solvers('playingmode2','junior')
run_solvers('playingmode2','expert')
run_solvers('playingmode2','master')
run_solvers('playingmode2','wizard')
