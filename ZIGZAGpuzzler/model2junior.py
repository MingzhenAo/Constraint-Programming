# -*- coding: utf-8 -*-
"""
Created on Mon Sep 14 15:16:19 2020

@author: Mingzhen Ao
"""

from subprocess import STDOUT, check_output
import os
import time
from os import path
'''
There are all the junior situations
The order of pieces [(Vy1,Vy2,Vy3,Vy4),(Vb11,Vb12,Vb13,Vb14,Vb15),(Vb21,Vb22,Vb23,Vb24,Vb25),(Vg11,Vg12,Vg13,Vg14),
(Vg21,Vg22,Vg23),(Vr11,Vr12,Vr13),(Vr21,Vr22,Vr23),(Vo1,Vo2,Vo3,Vo4),(Vp1,Vp2,Vp3,Vp4)]
'''
junior=[[               (),(522,521,421,532,511),                   (),(343,443,444,544),           (),           (),           (),(121,122,111,221),(132,232,222,133)],
        [               (),(411,421,422,511,321),(243,233,244,144,232),               (),           (),           (),           (),               (),               ()],
        [(111,211,311,221),(332,322,321,432,222),(443,444,343,333,544),               (),           (),           (),           (),               (),               ()],
        [(243,343,443,333),                   (),                   (),               (),(144,244,344),(121,111,221),           (),               (),               ()],
        [               (),(422,432,532,421,433),(121,122,111,211,132),(311,321,322,332),           (),           (),           (),               (),(521,511,411,522)],
        [(143,243,343,233),(132,122,121,222,133),                   (),               (),(144,244,344),           (),           (),               (),               ()],
        [(211,311,411,321),                   (),(221,222,121,111,322),               (),           (),           (),           (),(543,533,544,443),(132,133,233,122)],
        [               (),(332,322,321,432,222),                   (),               (),(211,311,411),           (),           (),(121,221,122,111),(421,521,511,422)]]
correspond=[('Vy1','Vy2','Vy3','Vy4'),('Vb11','Vb12','Vb13','Vb14','Vb15'),('Vb21','Vb22','Vb23','Vb24','Vb25'),('Vg11','Vg12','Vg13','Vg14'),
('Vg21','Vg22','Vg23'),('Vr11','Vr12','Vr13'),('Vr21','Vr22','Vr23'),('Vo1','Vo2','Vo3','Vo4'),('Vp1','Vp2','Vp3','Vp4')]
solvers=['picat','choco','jacop','Chuffed','Yuck','Or-tool','Coin-bc','Gurobi']
n=1
while n<9:
    k=int(n-1)
    element=junior[k]
    f = open('CSPmodelmode2.mzn')
    name='model'+str(n)+'.mzn'
    if not path.isdir('playingmode2/junior/model'+str(n)):
        os.mkdir('playingmode2/junior/model'+str(n))
    with open('playingmode2/junior/model'+str(n)+'/'+name,"w") as f1:
        for line in f:
            f1.write(line);
        if n==1:
              con1 ='constraint ((Vr11=433 /\  Vr12=533)\/(Vr11=533 /\  Vr12=433));\n'
              con2 ='constraint ((Vr21=322 /\  Vr22=422)\/(Vr21=422 /\  Vr22=322));\n'
              f1.write(con1)
              f1.write(con2)

              f1.write('\n')
        if n==2:
              con1 ='constraint ((Vg11=522 /\  Vg12=532 /\ Vg13=533 /\ Vg14=543)\/(Vg11=521 /\  Vg12=522 /\ Vg13=532 /\ Vg14=533));\n'
              con2 ='constraint ((Vr11=211 /\  Vr12=311)\/(Vr11=311 /\  Vr11=211));\n'
              con3 ='constraint ((Vo1=332 /\ Vo2=322/\ Vo3=333/\ Vo4=232)\/(Vo1=332 /\ Vo2=432/\ Vo3=333/\ Vo4=322));\n'
              f1.write(con1)
              f1.write(con2)
              f1.write(con3)
              f1.write('\n')
        if n==3:
              con1 ='constraint ((Vr11=433 /\  Vr12=533)\/(Vr11=533 /\  Vr12=433));\n'
              con2 ='constraint ((Vr21=411 /\  Vr22=511)\/(Vr21=511 /\  Vr22=411));\n'
              con3 ='constraint ((Vo1=522 /\ Vo2=521/\ Vo3=422/\ Vo4=532)\/(Vo1=422 /\ Vo2=432/\ Vo3=522/\ Vo4=421));\n'
              f1.write(con1)
              f1.write(con2)
              f1.write(con3)
              f1.write('\n')
        if n==4:
              con1 ='constraint Vg11=122 /\  Vg12=222;\n'
              con2 ='constraint ((Vo1=233 /\ Vo3=133)\/(Vo1=133 /\Vo2=233));\n'
              f1.write(con1)
              f1.write(con2)
              f1.write('\n')
        if n==5:
              con1 ='constraint Vr12=222\/Vr11=222;\n'
              f1.write(con1)
              f1.write('\n')
        if n==6:
              con1 ='constraint (Vr12=111/\Vr21=211/\Vr22=311)\/(Vr12=111/\Vr21=311/\Vr22=211)\/(Vr11=111/\Vr12=211/\Vr22=311)\/(Vr11=211/\Vr12=111/\Vr22=311);\n'
              con2 ='constraint ((Vo1=332 /\ Vo2=322/\ Vo3=333/\ Vo4=232)\/(Vo1=332 /\ Vo2=432/\ Vo3=333/\ Vo4=322));\n'
              f1.write(con1)
              f1.write(con2)
              f1.write('\n')
        if n==7:
              con1 ='constraint (Vr11=422/\Vr12=421/\Vr13=432)\/(Vr11=421/\Vr12=321/\Vr13=422)\/(Vr11=421/\Vr12=521/\Vr13=422)\/(Vr11=432/\Vr12=532/\Vr13=422)\/(Vr11=432/\Vr12=332/\Vr13=422);\n'
              f1.write(con1)
              f1.write('\n')
        if n==8:
              con1 ='constraint (Vr11=532/\Vr12=522/\Vr13=533)\/(Vr12=522/\Vr22=533);\n'
              f1.write(con1)
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
    os.system("minizinc.exe -c --solver org.minizinc.mzn-fzn"+'  playingmode2/junior/model'+str(n)+'/'+name+" --sac" )
    for solver in solvers:
            file = open('playingmode2/junior/model'+str(n)+'/'+'model' + str(n) + solver+'.log', 'w')
            if solver=='picat':
                begin=time.time()
                command ="timeout 1800 picat fzn_picat_sat.pi playingmode2/junior/model"+str(n)+'/model'+str(n)+".fzn"
            elif solver=='jacop':
                begin=time.time()
                command = "java -cp jacop-4.7.0.jar org.jacop.fz.Fz2jacop playingmode2/junior/model"+str(n)+'/model'+str(n)+".fzn"
            elif solver=='choco':
                begin = time.time()
                command ="java -cp choco-parsers-4.10.3-jar-with-dependencies.jar org.chocosolver.parser.flatzinc.ChocoFZN playingmode2/junior/model"+str(n)+'/model'+str(n)+".fzn"
            else:
                command = 'timeout 1800 minizinc.exe --solver ' + solver + " " + 'playingmode2/junior/model'+str(n)+'/'+name + " --output-time --sac"
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
            