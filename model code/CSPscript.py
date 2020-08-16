from subprocess import STDOUT, check_output
'''
There are total 120 situations in the guidebook, 24 for
each level of difficulty, so I pick 4 situations for each degree. And
all the number of situations are the multiple of 6. For example, 6,12,18....114,120.
The oder of pegs:blue1,blue2,green1,green2,yellow1,yellow2,red
'''
test=[
      [22,81,00,00,00,00,00],[61,00,43,00,41,62,00],[00,00,61,63,62,00,64],[61,72,63,64,14,62,24],
      [00,00,21,23,42,51,63],[71,00,00,00,21,00,81],[12,34,31,00,62,81,64],[72,82,22,84,54,00,12],
      [00,00,24,43,52,00,33],[13,00,24,00,22,00,44],[33,64,23,00,00,00,62],[22,23,64,00,53,00,51],
      [63,00,53,00,43,00,33],[42,73,23,00,00,00,00],[44,73,31,32,00,00,23],[00,00,22,83,52,00,54],
      [00,00,64,83,43,62,00],[00,00,23,82,32,51,53],[51,00,34,00,54,00,31],[52,00,54,00,00,00,61]
      ]
solvers=['Chuffed','Yuck','or-tool','coin-bc','gurobi']
n = 1
for data in test:
    f = open('CSPmodel.mzn')
    name='model'+str(n)+'.mzn'
    with open(name,"w") as f1:
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
    file= open('model'+str(n)+'log.log','w')
    for solver in solvers:
            file.write(solver + '\n')
            command = 'timeout 60 minizinc.exe --solver ' + solver + " " + name + " --output-time"
            try:
               text= check_output(command, stderr=STDOUT, timeout=60,shell=True)
               text_string = text.decode(encoding='UTF-8')
               for line in text_string:
                   file.write(line)
            except Exception:
               file.write('timeout-1minutes\n')
    n += 1