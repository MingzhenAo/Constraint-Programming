# -*- coding: utf-8 -*-
"""
Created on Fri Aug 28 22:04:17 2020

@author: Mingzhen Ao
"""

from subprocess import STDOUT, check_output
import os
import time
from os import path
'''
There are total 120 situations in the guidebook, 24 for
each level of difficulty, so I pick 4 situations for each degree. And
all the number of situations are the multiple of 6. For example, 6,12,18....114,120.
The oder of pegs:blue1,blue2,green1,green2,yellow1,yellow2,red
'''
master=[[31,71,34,00,64,00,73],[00,00,13,63,32,54,00],[82,00,64,00,23,62,00],[31,83,22,44,00,00,33],[51,63,11,44,00,00,00],[63,00,53,00,43,00,33],
        [00,00,31,51,34,54,00],[42,00,54,00,63,00,00],[53,00,73,83,00,00,62],[53,73,00,00,00,00,42],[32,00,54,72,43,00,00],[42,73,23,00,00,00,00],
        [00,00,52,83,00,00,62],[64,00,13,73,32,41,00],[00,00,23,00,44,63,42],[73,74,12,00,11,52,63],[61,64,34,00,31,00,00],[44,73,31,32,00,00,23],
        [21,54,73,00,00,00,62],[34,53,11,84,00,00,32],[63,00,31,00,33,00,61],[41,44,11,73,63,00,00],[52,00,34,43,31,00,64],[00,00,22,83,52,00,54]]
solvers=['choco','jacop','Chuffed','Yuck','Or-tool','Coin-bc','Gurobi']
n = 23
while n<25:
    k=int(n-1)
    data=master[k]
    f = open('CSPmodel.mzn')
    name='model'+str(n)+'.mzn'
    if not path.isdir('master/model'+str(n)):
        os.mkdir('master/model'+str(n))
    with open('master/model'+str(n)+'/'+name,"w") as f1:
        for line in f:
            f1.write(line);
        text ='\n'\
            'constraint Vpb1=' + str(data[0]) + ';\n'\
            'constraint Vpb2=' + str(data[1]) + ';\n'\
            'constraint Vpg1=' + str(data[2]) + ';\n'\
            'constraint Vpg2=' + str(data[3]) + ';\n'\
            'constraint Vpy1=' + str(data[4]) + ';\n'\
            'constraint Vpy2=' + str(data[5]) + ';\n'\
            'constraint Vpr='  + str(data[6]) + ';\n'
        f1.write(text)
    os.system("minizinc.exe -c --solver org.minizinc.mzn-fzn"+'  master/model'+str(n)+'/'+name+" --sac" )
    for solver in solvers:
            file = open('master/model'+str(n)+'/'+'model' + str(n) + solver+'.log', 'w')
            if solver=='jacop':
                begin=time.time()
                command = "java -cp jacop-4.7.0.jar org.jacop.fz.Fz2jacop master/model"+str(n)+'/model'+str(n)+".fzn"
            elif solver=='choco':
                begin = time.time()
                command ="java -cp choco-parsers-4.10.3-jar-with-dependencies.jar org.chocosolver.parser.flatzinc.ChocoFZN master/model"+str(n)+'/model'+str(n)+".fzn"
            else:
                command = 'timeout 1800 minizinc.exe --solver ' + solver + " " + 'master/model'+str(n)+'/'+name + " --output-time --sac"
            try:
               text= check_output(command, stderr=STDOUT, timeout=1800,shell=True)
               text_string = text.decode(encoding='UTF-8')
               file.write(text_string)
               if (solver=='jacop') or (solver=='choco'):
                       end = time.time()
                       file.write("the excute time:"+str(end-begin))
            except Exception:
               file.write('timeout-30minutes\n')
    n += 1