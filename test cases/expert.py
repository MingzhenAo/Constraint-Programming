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
expert=[[33,52,00,00,00,00,00],[73,74,14,23,33,42,13],[00,00,51,00,41,61,00],[42,00,00,00,21,53,00],[22,23,82,83,51,62,00],[00,00,24,43,52,00,33],
        [52,00,73,00,33,00,54],[42,00,52,62,00,00,72],[00,00,61,00,72,00,43],[42,00,51,00,00,00,21],[62,74,42,71,23,00,00],[13,00,24,00,22,00,44],
        [21,33,53,00,61,71,00],[51,72,23,00,00,00,43],[31,32,61,00,54,84,00],[31,62,14,82,44,00,00],[33,00,42,43,00,00,32],[33,64,23,00,00,00,62],
        [31,71,22,73,43,54,00],[62,64,12,33,00,00,00],[00,00,41,52,42,84,12],[00,00,00,00,14,71,53],[23,34,64,00,52,71,00],[22,23,64,00,53,00,51]]
solvers=['choco','jacop','Chuffed','Yuck','Or-tool','Coin-bc','Gurobi']
n = 12
while n<25:
    k=int(n-1)
    data=expert[k]
    f = open('CSPmodel.mzn')
    name='model'+str(n)+'.mzn'
    if not path.isdir('expert/model'+str(n)):
        os.mkdir('expert/model'+str(n))
    with open('expert/model'+str(n)+'/'+name,"w") as f1:
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
    os.system("minizinc.exe -c --solver org.minizinc.mzn-fzn"+'  expert/model'+str(n)+'/'+name+" --sac" )
    for solver in solvers:
            file = open('expert/model'+str(n)+'/'+'model' + str(n) + solver+'.log', 'w')
            if solver=='jacop':
                begin=time.time()
                command = "java -cp jacop-4.7.0.jar org.jacop.fz.Fz2jacop expert/model"+str(n)+'/model'+str(n)+".fzn"
            elif solver=='choco':
                begin = time.time()
                command ="java -cp choco-parsers-4.10.3-jar-with-dependencies.jar org.chocosolver.parser.flatzinc.ChocoFZN expert/model"+str(n)+'/model'+str(n)+".fzn"
            else:
                command = 'timeout 1800 minizinc.exe --solver ' + solver + " " + 'expert/model'+str(n)+'/'+name + " --output-time --sac"
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