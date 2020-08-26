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
start=[[12,23,32,00,43,52,63],[74,00,52,53,31,34,71],[41,74,63,64,52,53,42],[22,42,34,43,31,00,23],[84,00,00,00,11,81,14],[22,81,00,00,00,00,00],
      [21,54,32,43,63,72,81],[11,43,42,74,71,00,14],[71,00,51,62,53,00,73],[71,81,74,84,64,00,61],[21,22,23,24,41,51,31],[61,00,43,00,41,63,00],
      [51,61,71,81,31,41,00],[23,34,32,00,33,43,53],[73,74,53,34,33,54,00],[00,00,63,00,62,53,52],[21,23,42,52,32,61,63],[00,00,61,63,62,00,64],
      [24,71,61,62,23,52,13],[14,24,12,42,74,84,83],[12,74,13,52,44,73,83],[71,81,52,44,21,84,14],[22,63,13,23,11,62,33],[61,72,63,64,14,62,24]]
solvers=['choco','jacop','Chuffed','Yuck','Or-tool','Coin-bc','Gurobi']
java_solver=[]
n = 17
while n<25:
    k=int(n-1)
    data=start[k]
    f = open('CSPmodel.mzn')
    name='model'+str(n)+'.mzn'
    if not path.isdir('start/model'+str(n)):
        os.mkdir('start/model'+str(n))
    with open('start/model'+str(n)+'/'+name,"w") as f1:
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
    os.system("minizinc.exe -c --solver org.minizinc.mzn-fzn"+'  start/model'+str(n)+'/'+name+" --sac" )
    for solver in solvers:
            file = open('start/model'+str(n)+'/'+'model' + str(n) + solver+'.log', 'w')
            if solver=='jacop':
                begin=time.time()
                command = "java -cp jacop-4.7.0.jar org.jacop.fz.Fz2jacop start/model"+str(n)+'/model'+str(n)+".fzn"
            elif solver=='choco':
                begin = time.time()
                command ="java -cp choco-parsers-4.10.3-jar-with-dependencies.jar org.chocosolver.parser.flatzinc.ChocoFZN start/model"+str(n)+'/model'+str(n)+".fzn"
            else:
                command = 'timeout 1800 minizinc.exe --solver ' + solver + " " + 'start/model'+str(n)+'/'+name + " --output-time --sac"
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