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
junior=[[23,32,21,22,81,82,54],[33,71,11,12,14,63,00],[62,00,00,00,53,64,73],[00,00,00,00,22,00,21],[62,74,22,82,34,00,12],[00,00,21,23,42,51,63],
        [62,00,00,00,51,52,61],[52,00,71,81,74,84,33],[21,22,14,23,42,51,81],[14,63,00,00,00,00,00],[81,00,11,84,00,00,14],[71,00,00,00,21,00,81],
        [72,00,00,00,00,00,71],[00,00,00,00,22,00,23],[42,00,72,00,53,64,44],[52,00,23,00,22,00,53],[00,00,43,83,74,00,00],[12,34,31,00,62,81,64],
        [62,00,34,53,00,00,23],[00,00,22,64,31,34,53],[00,00,21,63,23,61,00],[00,00,61,00,23,31,53],[00,00,22,00,42,00,32],[72,82,22,84,54,00,12]]
solvers=['choco','jacop','Chuffed','Yuck','Or-tool','Coin-bc','Gurobi']
java_solver=[]
n = 1
while n<25:
    k=int(n-1)
    data=junior[k]
    f = open('CSPmodel.mzn')
    name='model'+str(n)+'.mzn'
    if not path.isdir('junior/model'+str(n)):
        os.mkdir('junior/model'+str(n))
    with open('junior/model'+str(n)+'/'+name,"w") as f1:
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
    os.system("minizinc.exe -c --solver org.minizinc.mzn-fzn"+'  junior/model'+str(n)+'/'+name+" --sac" )
    for solver in solvers:
            file = open('junior/model'+str(n)+'/'+'model' + str(n) + solver+'.log', 'w')
            if solver=='jacop':
                begin=time.time()
                command = "java -cp jacop-4.7.0.jar org.jacop.fz.Fz2jacop junior/model"+str(n)+'/model'+str(n)+".fzn"
            elif solver=='choco':
                begin = time.time()
                command ="java -cp choco-parsers-4.10.3-jar-with-dependencies.jar org.chocosolver.parser.flatzinc.ChocoFZN junior/model"+str(n)+'/model'+str(n)+".fzn"
            else:
                command = 'timeout 1800 minizinc.exe --solver ' + solver + " " + 'junior/model'+str(n)+'/'+name + " --output-time --sac"
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