# -*- coding: utf-8 -*-
"""
Created on Wed Sep  9 14:12:23 2020

@author: Mingzhen Ao
"""

from subprocess import STDOUT, check_output
import os
import time
from os import path
'''
There are all the start situations
The order of pieces [(Vy1,Vy2,Vy3,Vy4),(Vb11,Vb12,Vb13,Vb14,Vb15),(Vb21,Vb22,Vb23,Vb24,Vb25),(Vg11,Vg12,Vg13,Vg14),
(Vg21,Vg22,Vg23),(Vr11,Vr12,Vr13),(Vr21,Vr22,Vr23),(Vo1,Vo2,Vo3,Vo4),(Vp1,Vp2,Vp3,Vp4)]
'''
start=[ [(111,211,311,221),(132,122,121,222,133),(533,543,532,432,544),               (),           (),(443,433,444),(521,511,522),               (),               ()],
        [(332,432,532,422),(311,321,322,411,221),(121,122,111,211,132),               (),(244,344,444),(143,133,144),           (),(521,511,522,421),(543,533,433,544)],
        [(111,211,311,221),(432,422,421,522,433),                   (),               (),(133,233,333),(143,144,243),           (),               (),               ()],
        [(343,443,543,433),(243,233,333,244,232),(321,311,421,422,211),(132,133,143,144),(344,444,544),           (),           (),(121,122,111,221),               ()],
        [               (),                   (),(333,343,332,232,344),(432,433,443,444),(222,322,422),           (),           (),(121,122,111,221),(233,133,132,243)],
        [               (),(422,421,321,432,411),                   (),(511,521,522,532),(344,444,544),           (),           (),               (),(144,143,133,244)],
        [(144,244,344,243),(533,532,432,543,522),                   (),               (),(311,411,511),           (),           (),               (),               ()],
        [               (),(133,143,243,132,144),                   (),               (),(244,344,444),           (),(543,443,544),               (),(333,233,232,343)]]
correspond=[('Vy1','Vy2','Vy3','Vy4'),('Vb11','Vb12','Vb13','Vb14','Vb15'),('Vb21','Vb22','Vb23','Vb24','Vb25'),('Vg11','Vg12','Vg13','Vg14'),
('Vg21','Vg22','Vg23'),('Vr11','Vr12','Vr13'),('Vr21','Vr22','Vr23'),('Vo1','Vo2','Vo3','Vo4'),('Vp1','Vp2','Vp3','Vp4')]
solvers=['picat','choco','jacop','Chuffed','Yuck','Or-tool','Coin-bc','Gurobi']
n=1
while n<9:
    k=int(n-1)
    element=start[k]
    f = open('CSPmodelmode2.mzn')
    name='model'+str(n)+'.mzn'
    if not path.isdir('playingmode2/start/model'+str(n)):
        os.mkdir('playingmode2/start/model'+str(n))
    with open('playingmode2/start/model'+str(n)+'/'+name,"w") as f1:
        for line in f:
            f1.write(line);
        if n==1:
                con1 ='constraint ((Vg11=322 /\  Vg12=332 /\ Vg13=333 /\ Vg14=343)\/(Vg11=321 /\  Vg12=322 /\ Vg13=332 /\ Vg14=333));\n'
                con2 ='constraint ((Vo2=411 /\  Vo3=422 )\/(Vo4=411 /\ Vo3=422));\n'
                con3 ='constraint Vp1=233 \/ Vp2=233\/ Vp3=233 \/ Vp4=233;'
                f1.write(con1)
                f1.write(con2)
                f1.write(con3)
                f1.write('\n')
        if n==2:
                cons ='constraint Vr22=333;'
                f1.write(cons)
                f1.write('\n')
        if n==3:
                con1 ='constraint ((Vg11=143 /\ Vg12=243 /\ Vg13=244 /\ Vg14=344)\/(Vg11=443 /\  Vg12=343 /\ Vg13=344 /\ Vg14=244));\n'
                con2 ='constraint ((Vr21=511 /\ Vr22=411) \/ (Vr21=411 /\ Vr22=511));\n'
                con3 ='constraint ((Vo1=122 /\ Vo2=222) \/ (Vo1=222 /\ Vo3=122));\n'
                con4 ='constraint Vp1=322 \/ Vp2=322\/ Vp3=322 \/ Vp4=322;'
                f1.write(con1)
                f1.write(con2)
                f1.write(con3)
                f1.write(con4)
                f1.write('\n')
        if n==4:
                cons ='constraint ((Vr11=222 /\ Vr12=322) \/ (Vr11=322 /\ Vr12=222));'
                f1.write(cons)
                f1.write('\n')
        if n==5:
                cons ='constraint ((Vr11=144 /\ Vr12=244) \/ (Vr11=244 /\ Vr12=144));'
                f1.write(cons)
                f1.write('\n')
        if n==6:
                con1 ='constraint Vr12=533;\n'
                con2 ='constraint ((Vo1=433 /\ Vo3=333)\/(Vo1=333 /\Vo2=433));'
                f1.write(con1)
                f1.write(con2)
                f1.write('\n')
        if n==7:
                con1 ='constraint ((Vg11=322 /\  Vg12=422)\/(Vg11=422 /\  Vg12=322));\n'
                con2 ='constraint ((Vr11=444 /\ Vr12=544) \/ (Vr11=544 /\ Vr12=444));\n'
                con3 ='constraint ((Vo1=433 /\ Vo3=333)\/(Vo1=333 /\Vo2=433));'
                f1.write(con1)
                f1.write(con2)
                f1.write(con3)
                f1.write('\n')
        if n==8:
                con1 ='constraint ((Vg11=122 \/  Vg12=222)\/(Vg11=222 \/  Vg12=122));\n'
                con2 ='constraint ((Vr11=111 /\ Vr12=211) \/ (Vr11=211 /\ Vr12=111));'
                f1.write(con1)
                f1.write(con2)
                f1.write('\n')
        m=0
        while m<len(element):
            f1.write('\n')
            if len(element[m])!=0:
                ele_num=0
                text ='\n'
                while ele_num<len(element[m]):
                   text+='constraint ' + correspond[m][ele_num] +' = '+ str(element[m][ele_num])+';\n'
                   ele_num+=1
                f1.write(text)
            elif m==0:
               f=open('Vy.txt')
               for line in f:
                      f1.write(line);
            elif m==1:
               f=open('Vb1.txt')
               for line in f:
                      f1.write(line);
            elif m==2:
               f=open('Vb2.txt')
               for line in f:
                      f1.write(line);
            elif m==3:
               f=open('Vg1.txt')
               for line in f:
                      f1.write(line);
            elif m==4:
               f=open('Vg2.txt')
               for line in f:
                      f1.write(line);
            elif m==5:
               f=open('Vr1.txt')
               for line in f:
                      f1.write(line);
            elif m==6:
               f=open('Vr2.txt')
               for line in f:
                      f1.write(line);
            elif m==7:
               f=open('Vo.txt')
               for line in f:
                      f1.write(line);
            elif m==8:
               f=open('VP.txt')
               for line in f:
                      f1.write(line);
            m+=1
    os.system("minizinc.exe -c --solver org.minizinc.mzn-fzn"+'  playingmode2/start/model'+str(n)+'/'+name+" --sac" )
    for solver in solvers:
            file = open('playingmode2/start/model'+str(n)+'/'+'model' + str(n) + solver+'.log', 'w')
            if solver=='picat':
                begin=time.time()
                command ="timeout 1800 picat fzn_picat_sat.pi playingmode2/start/model"+str(n)+'/model'+str(n)+".fzn"
            elif solver=='jacop':
                begin=time.time()
                command = "java -cp jacop-4.7.0.jar org.jacop.fz.Fz2jacop playingmode2/start/model"+str(n)+'/model'+str(n)+".fzn"
            elif solver=='choco':
                begin = time.time()
                command ="java -cp choco-parsers-4.10.3-jar-with-dependencies.jar org.chocosolver.parser.flatzinc.ChocoFZN playingmode2/start/model"+str(n)+'/model'+str(n)+".fzn"
            else:
                command = 'timeout 1800 minizinc.exe --solver ' + solver + " " + 'playingmode2/start/model'+str(n)+'/'+name + " --output-time --sac"
            try:
               text= check_output(command, stderr=STDOUT, timeout=1800,shell=True)
               text_string = text.decode(encoding='UTF-8')
               file.write(text_string)
               if (solver=='jacop') or (solver=='choco') or (solver=='picat'):
                       end = time.time()
                       file.write("the excute time:"+str(end-begin))
            except Exception:
               file.write('timeout-30minutes\n')
    n+=1
            