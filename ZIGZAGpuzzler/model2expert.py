# -*- coding: utf-8 -*-
"""
Created on Mon Sep 14 19:31:22 2020

@author: Mingzhen Ao
"""

from subprocess import STDOUT, check_output
import os
import time
from os import path
'''
There are all the expert situations
The order of pieces [(Vy1,Vy2,Vy3,Vy4),(Vb11,Vb12,Vb13,Vb14,Vb15),(Vb21,Vb22,Vb23,Vb24,Vb25),(Vg11,Vg12,Vg13,Vg14),
(Vg21,Vg22,Vg23),(Vr11,Vr12,Vr13),(Vr21,Vr22,Vr23),(Vo1,Vo2,Vo3,Vo4),(Vp1,Vp2,Vp3,Vp4)]
'''
expert=[[               (),                   (),(443,444,343,333,544),               (),           (),           (),           (),(132,232,133,122),               ()],
        [               (),                   (),                   (),               (),           (),(543,533,544),(332,322,333),               (),(532,522,521,432)],
        [(244,344,444,343),                   (),                   (),               (),           (),(543,533,544),(433,333,443),(143,243,144,133),               ()],
        [               (),                   (),                   (),(232,233,243,244),           (),(143,133,144),(343,333,344),               (),(521,511,411,522)],
        [(221,321,421,311),                   (),(543,533,544,444,532),               (),           (),           (),           (),               (),               ()],
        [               (),(522,521,421,532,511),                   (),               (),           (),           (),           (),(543,533,544,443),               ()],
        [               (),                   (),(422,432,522,521,332),(211,221,222,232),(311,411,511),           (),           (),               (),               ()],
        [               (),                   (),                   (),(111,121,122,132),           (),           (),           (),(143,243,144,133),(521,511,411,522)]]
correspond=[('Vy1','Vy2','Vy3','Vy4'),('Vb11','Vb12','Vb13','Vb14','Vb15'),('Vb21','Vb22','Vb23','Vb24','Vb25'),('Vg11','Vg12','Vg13','Vg14'),
('Vg21','Vg22','Vg23'),('Vr11','Vr12','Vr13'),('Vr21','Vr22','Vr23'),('Vo1','Vo2','Vo3','Vo4'),('Vp1','Vp2','Vp3','Vp4')]
solvers=['picat','choco','jacop','Chuffed','Yuck','Or-tool','Coin-bc','Gurobi']
n=1
while n<9:
    k=int(n-1)
    element=expert[k]
    f = open('CSPmodelmode2.mzn')
    name='model'+str(n)+'.mzn'
    if not path.isdir('playingmode2/expert/model'+str(n)):
        os.mkdir('playingmode2/expert/model'+str(n))
    with open('playingmode2/expert/model'+str(n)+'/'+name,"w") as f1:
        for line in f:
            f1.write(line)
        if n==1:
                con1 ='constraint (Vg11=311/\Vg12=411/\Vg13=421/\Vg14=521)\/(Vg11=411/\Vg12=311/\Vg13=321/\Vg14=221);\n'
                con2 ='constraint (Vr11=111/\Vr12=211/\Vr13=121)\/(Vr11=211/\Vr12=111/\Vr13=221);\n'
                f1.write(con1)
                f1.write(con2)
                f1.write('\n')    
        if n==5:
                con1 ='constraint (Vr11=343/\Vr12=243/\Vr13=344)\/(Vr11=343/\Vr12=443/\Vr13=344);\n'
                con2 ='constraint ((Vo1=432 /\ Vo2=422/\ Vo3=433/\ Vo4=332)\/(Vo1=432 /\ Vo2=532/\ Vo3=433/\ Vo4=422));\n'
                f1.write(con1)
                f1.write(con2)
                f1.write('\n')
        if n==6:
                con1 ='constraint (Vy1=233/\Vy2=333/\Vy3=433);\n'
                con2 ='constraint (Vg11=243/\Vg12=343/\Vg13=344/\Vg14=444)\/(Vg11=543/\Vg12=443/\Vg13=444/\Vg14=344);\n'
                f1.write(con1)
                f1.write(con2)
                f1.write('\n')
        if n==7:
                con1 ='constraint (Vr12=322);\n'
                f1.write(con1)
                f1.write('\n')
        if n==8:
                con1 ='constraint ((Vr11=244/\Vr12=243/\Vr13=344)\/(Vr11=344/\Vr12=343/\Vr13=244)\/(Vr11=243/\Vr12=143/\Vr13=244/\Vr21=343/\Vr22=344/\Vr23=443));\n'
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
                      f1.write(line)
            elif m==1:
               f=open('Vb1.txt')
               for line in f:
                      f1.write(line)
            elif m==2:
               f=open('Vb2.txt')
               for line in f:
                      f1.write(line)
            elif m==3:
               f=open('Vg1.txt')
               for line in f:
                      f1.write(line)
            elif m==4:
               f=open('Vg2.txt')
               for line in f:
                      f1.write(line)
            elif m==5:
               f=open('Vr1.txt')
               for line in f:
                      f1.write(line)
            elif m==6:
               f=open('Vr2.txt')
               for line in f:
                      f1.write(line)
            elif m==7:
               f=open('Vo.txt')
               for line in f:
                      f1.write(line)
            elif m==8:
               f=open('VP.txt')
               for line in f:
                      f1.write(line)
            m+=1
    os.system("minizinc.exe -c --solver org.minizinc.mzn-fzn"+'  playingmode2/expert/model'+str(n)+'/'+name+" --sac" )
    for solver in solvers:
            file = open('playingmode2/expert/model'+str(n)+'/'+'model' + str(n) + solver+'.log', 'w')
            if solver=='picat':
                begin=time.time()
                command ="timeout 1800 picat fzn_picat_sat.pi playingmode2/expert/model"+str(n)+'/model'+str(n)+".fzn"
            elif solver=='jacop':
                begin=time.time()
                command = "java -cp jacop-4.7.0.jar org.jacop.fz.Fz2jacop playingmode2/expert/model"+str(n)+'/model'+str(n)+".fzn"
            elif solver=='choco':
                begin = time.time()
                command ="java -cp choco-parsers-4.10.3-jar-with-dependencies.jar org.chocosolver.parser.flatzinc.ChocoFZN playingmode2/expert/model"+str(n)+'/model'+str(n)+".fzn"
            else:
                command = 'timeout 1800 minizinc.exe --solver ' + solver + " " + 'playingmode2/expert/model'+str(n)+'/'+name + " --output-time --sac"
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
            