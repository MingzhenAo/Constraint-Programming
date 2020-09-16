# -*- coding: utf-8 -*-
"""
Created on Fri Aug 28 22:13:10 2020

@author: Mingzhen Ao
"""

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
There are all the wizard situations
The oder of pegs:blue1,blue2,green1,green2,yellow1,yellow2,red
'''
wizard=[[43,00,51,83,32,00,00],[00,00,31,51,62,00,00],[23,00,31,41,44,63,61],[54,00,00,00,52,73,31],[34,63,13,32,00,00,00],[00,00,64,83,43,62,00],
        [00,00,82,00,32,52,34],[53,00,72,81,31,00,62],[53,00,42,64,00,00,00],[51,73,32,00,43,00,00],[42,00,71,00,54,00,33],[00,00,23,82,32,51,53],
        [42,00,51,82,00,00,00],[22,33,00,00,72,00,00],[00,00,44,00,22,73,00],[53,00,51,00,32,00,72],[00,00,13,82,00,00,74],[51,00,34,00,54,00,31],
        [23,00,71,72,14,63,00],[52,00,62,00,22,00,00],[00,00,63,00,43,00,51],[32,00,00,00,62,00,54],[51,52,43,00,00,00,00],[52,00,54,00,00,00,61]
        ]
solvers=['picat','choco','jacop','Chuffed','Yuck','Or-tool','Coin-bc','Gurobi']
n = 1
while n<25:
    k=int(n-1)
    data=wizard[k]
    f = open('CSPmodel.mzn')
    name='model'+str(n)+'.mzn'
    if not path.isdir('wizard/model'+str(n)):
        os.mkdir('wizard/model'+str(n))
    with open('wizard/model'+str(n)+'/'+name,"w") as f1:
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
    os.system("minizinc.exe -c --solver org.minizinc.mzn-fzn"+'  wizard/model'+str(n)+'/'+name+" --sac" )
    for solver in solvers:
            file = open('wizard/model'+str(n)+'/'+'model' + str(n) + solver+'.log', 'w')
            if solver=='picat':
                begin=time.time()
                command ="timeout 1800 picat fzn_picat_sat.pi wizard/model"+str(n)+'/model'+str(n)+".fzn"
            elif solver=='jacop':
                begin=time.time()
                command = "java -cp jacop-4.7.0.jar org.jacop.fz.Fz2jacop wizard/model"+str(n)+'/model'+str(n)+".fzn"
            elif solver=='choco':
                begin = time.time()
                command ="java -cp choco-parsers-4.10.3-jar-with-dependencies.jar org.chocosolver.parser.flatzinc.ChocoFZN wizard/model"+str(n)+'/model'+str(n)+".fzn"
            else:
                command = 'timeout 1800 minizinc.exe --solver ' + solver + " " + 'wizard/model'+str(n)+'/'+name + " --output-time --sac"
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