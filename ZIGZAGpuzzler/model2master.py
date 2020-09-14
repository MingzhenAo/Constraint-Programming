# -*- coding: utf-8 -*-
"""
Created on Mon Sep 14 21:18:52 2020

@author: Mingzhen Ao
"""


from subprocess import STDOUT, check_output
import os
import time
from os import path
'''
There are all the master situations
The order of pieces [(Vy1,Vy2,Vy3,Vy4),(Vb11,Vb12,Vb13,Vb14,Vb15),(Vb21,Vb22,Vb23,Vb24,Vb25),(Vg11,Vg12,Vg13,Vg14),
(Vg21,Vg22,Vg23),(Vr11,Vr12,Vr13),(Vr21,Vr22,Vr23),(Vo1,Vo2,Vo3,Vo4),(Vp1,Vp2,Vp3,Vp4)]
'''
master=[[               (),(143,133,233,144,132),                   (),               (),           (),           (),           (),               (),               ()],
        [               (),(232,222,221,332,122),                   (),               (),           (),           (),           (),               (),               ()],
        [(244,344,444,343),                   (),(533,543,532,432,544),               (),           (),           (),           (),               (),(521,511,411,522)],
        [               (),                   (),(222,221,122,132,321),(144,244,243,343),           (),           (),           (),               (),               ()],
        [               (),                   (),(432,433,422,522,443),               (),           (),           (),           (),               (),(343,333,332,243)],
        [(243,343,443,344),                   (),                   (),               (),           (),           (),           (),(521,511,522,421),               ()],
        [               (),                   (),                   (),               (),           (),(121,111,221),           (),               (),               ()],
        [               (),                   (),                   (),               (),           (),(521,511,522),(543,533,544),(143,243,144,133),               ()]]
correspond=[('Vy1','Vy2','Vy3','Vy4'),('Vb11','Vb12','Vb13','Vb14','Vb15'),('Vb21','Vb22','Vb23','Vb24','Vb25'),('Vg11','Vg12','Vg13','Vg14'),
('Vg21','Vg22','Vg23'),('Vr11','Vr12','Vr13'),('Vr21','Vr22','Vr23'),('Vo1','Vo2','Vo3','Vo4'),('Vp1','Vp2','Vp3','Vp4')]
solvers=['Chuffed']
n=1
while n<9:
    k=int(n-1)
    element=master[k]
    f = open('CSPmodelmode2.mzn')
    name='model'+str(n)+'.mzn'
    if not path.isdir('playingmode2/master/model'+str(n)):
        os.mkdir('playingmode2/master/model'+str(n))
    with open('playingmode2/master/model'+str(n)+'/'+name,"w") as f1:
        for line in f:
            f1.write(line);
        if n==1:
            con1 ='constraint Vy4=422;'
            con2 ='constraint ((Vb21=222/\Vb22=232/\Vb23=322/\Vb24=321/\Vb25=132)\/(Vb21=322/\Vb22=321/\Vb23=222/\Vb24=232/\Vb25=421));\n'
            f1.write(con1)
            f1.write(con2)
            f1.write('\n')
        if n==2:
            con1 ='constraint (Vr11=111/\Vr12=211/\Vr13=121)\/(Vr11=211/\Vr12=111/\Vr13=221);\n'
            f1.write(con1)
            f1.write('\n')
        if n==4:
            con1 ='constraint (Vr11=133/\Vr12=233)\/(Vr11=233/\Vr12=133);\n'
            f1.write(con1)
            f1.write('\n')
        if n==5:
            con1 ='constraint ((Vb11=232/\Vb12=222/\Vb13=221/\Vb14=322/\Vb15=233)\/(Vb11=222/\Vb12=232/\Vb13=233/\Vb14=322/\Vb15=132));'
            f1.write(con1)
            f1.write('\n')
        if n==6:
            con1 ='constraint ((Vr11=444 /\ Vr12=544) \/ (Vr11=544 /\ Vr12=444));\n'
            f1.write(con1)
            f1.write('\n')
        if n==7:
            con1 ='constraint ((Vg11=311/\Vg12=211/\Vg13=221/\Vg14=121)\/(Vg11=211/\Vg12=311/\Vg13=321/\Vg14=421));\n'
            con2 ='constraint ((Vo1=233 /\ Vo3=133)\/(Vo1=133 /\Vo2=233));\n'
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
    os.system("minizinc.exe -c --solver org.minizinc.mzn-fzn"+'  playingmode2/master/model'+str(n)+'/'+name+" --sac" )
    for solver in solvers:
            file = open('playingmode2/master/model'+str(n)+'/'+'model' + str(n) + solver+'.log', 'w')
            if solver=='jacop':
                begin=time.time()
                command = "java -cp jacop-4.7.0.jar org.jacop.fz.Fz2jacop playingmode2/master/model"+str(n)+'/model'+str(n)+".fzn"
            elif solver=='choco':
                begin = time.time()
                command ="java -cp choco-parsers-4.10.3-jar-with-dependencies.jar org.chocosolver.parser.flatzinc.ChocoFZN playingmode2/master/model"+str(n)+'/model'+str(n)+".fzn"
            else:
                command = 'timeout 1800 minizinc.exe --solver ' + solver + " " + 'playingmode2/master/model'+str(n)+'/'+name + " --output-time --sac"
            try:
               text= check_output(command, stderr=STDOUT, timeout=1800,shell=True)
               text_string = text.decode(encoding='UTF-8')
               file.write(text_string)
               if (solver=='jacop') or (solver=='choco'):
                       end = time.time()
                       file.write("the excute time:"+str(end-begin))
            except Exception:
               file.write('timeout-30minutes\n')
    n+=1
            