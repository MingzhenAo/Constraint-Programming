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
There are all the expert situations
The order of pieces [(Vy1,Vy2,Vy3,Vy4),(Vb11,Vb12,Vb13,Vb14,Vb15),(Vb21,Vb22,Vb23,Vb24,Vb25),(Vg11,Vg12,Vg13,Vg14),
(Vg21,Vg22,Vg23),(Vr11,Vr12,Vr13),(Vr21,Vr22,Vr23),(Vo1,Vo2,Vo3,Vo4),(Vp1,Vp2,Vp3,Vp4)]
'''
'''
       [[(122,123,124,133),(322,312,313,222,412),(241,141,231,232,151),(121,131,132,142),(311,411,511),(114,115,214),(321,331,421),               (),(113,213,223,112)],
       [(113,213,313,214),(232,231,331,222,241),(124,114,123,223,115),               (),(131,132,133),(411,511,421),(141,151,142),(312,412,311,322),(112,122,121,212)],
       [(221,321,421,331),(322,312,313,222,412),(241,141,231,232,151),(121,131,132,142),(311,411,511),(114,115,214),(123,133,124),               (),               ()],
       [(131,141,151,142),                   (),(223,222,123,133,322),               (),(311,321,331),(114,115,124),(213,214,313),(411,421,412,511),(232,231,241,132)],
       [(131,132,133,142),(322,312,313,222,412),(241,141,231,232,151),               (),(311,411,511),(114,115,214),(321,331,421),(123,124,113,223),               ()],
       [(131,141,151,241),(133,132,232,123,142),                   (),               (),(113,213,313),(411,511,412),(321,421,331),(114,214,124,115),(222,322,312,223)],
       [(131,141,151,241),(421,411,412,321,511),(223,123,222,212,124),               (),           (),(114,115,214),(132,133,142),(231,221,331,232),(313,312,322,213)],
       [(311,411,511,421),(142,141,241,132,151),                   (),(213,313,312,412),           (),(123,122,133),           (),(114,214,124,115),(231,331,321,232)]]
'''
'''
        [(113,114,115,124),                   (),(231,331,321,322,241),               (),           (),(141,151,142),(213,214,223),(411,511,421,412),(232,132,133,222)],
        [               (),(331,321,322,231,421),(133,123,124,224,132),               (),(111,121,131),(114,115,214),(222,221,122),(141,142,241,151),               ()],
        [(122,123,124,133),(313,213,223,312,214),(232,231,132,142,331),               (),           (),(411,511,412),           (),(321,311,421,322),               ()],
        [(131,141,151,241),(421,411,412,321,511),(232,231,132,142,331),               (),           (),(222,221,322),           (),(123,223,122,133),               ()],
        [               (),                   (),(241,141,231,232,151),(142,132,133,123),(113,213,313),(411,511,421),(312,311,412),(114,214,124,115),               ()],
        [(311,321,331,421),                   (),                   (),               (),           (),(411,511,412),(132,133,142),(114,214,124,115),(222,322,312,223)],
        [(311,312,313,412),(223,324,113,222,214),                   (),(142,132,133,123),           (),(411,511,421),(114,115,124),               (),               ()],
        [(113,123,133,223),(142,141,241,132,151),                   (),(112,212,213,313),           (),(411,511,421),(312,311,412),(114,214,124,115),               ()]
'''
expert=[[(311,411,511,412),(313,213,223,312,214),                   (),               (),           (),(321,421,322),           (),               (),(221,231,331,222)],
        [               (),                   (),(232,231,132,142,331),               (),           (),(312,313,322),           (),(222,223,122,212),(111,121,221,112)],
        [(113,114,115,124),(223,222,212,123,322),                   (),(312,313,213,214),           (),(132,133,142),           (),               (),               ()],
        [(122,123,124,133),(322,312,313,222,412),                   (),               (),           (),(411,511,421),(114,115,214),               (),               ()],
        [               (),(212,213,223,112,313),(322,321,222,232,421),               (),           (),(411,511,412),(114,115,214),               (),               ()],
        [               (),                   (),                   (),(511,411,421,321),           (),(213,214,223),(231,331,232),(312,313,412,322),               ()],
        [(311,411,511,412),                   (),(322,321,222,232,421),               (),           (),(114,115,124),(213,214,313),               (),               ()],
        [(311,312,313,412),                   (),                   (),(241,231,331,321),           (),(411,511,421),           (),               (),(223,123,124,213)]]
correspond=[('Vy1','Vy2','Vy3','Vy4'),('Vb11','Vb12','Vb13','Vb14','Vb15'),('Vb21','Vb22','Vb23','Vb24','Vb25'),('Vg11','Vg12','Vg13','Vg14'),
('Vg21','Vg22','Vg23'),('Vr11','Vr12','Vr13'),('Vr21','Vr22','Vr23'),('Vo1','Vo2','Vo3','Vo4'),('Vp1','Vp2','Vp3','Vp4')]
solvers=['picat','choco','jacop','Chuffed','Yuck','Or-tool','Coin-bc','Gurobi']
n=1
while n<9:
    k=int(n-1)
    element=expert[k]
    f = open('CSPmodel.mzn')
    name='model'+str(n)+'.mzn'
    if not path.isdir('playingmode1/expert/model'+str(n)):
        os.mkdir('playingmode1/expert/model'+str(n))
    with open('playingmode1/expert/model'+str(n)+'/'+name,"w") as f1:
        for line in f:
            f1.write(line);
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
    os.system("minizinc.exe -c --solver org.minizinc.mzn-fzn"+'  playingmode1/expert/model'+str(n)+'/'+name+" --sac" )
    for solver in solvers:
            file = open('playingmode1/expert/model'+str(n)+'/'+'model' + str(n) + solver+'.log', 'w')
            if solver=='picat':
                begin=time.time()
                command ="timeout 1800 picat fzn_picat_sat.pi playingmode1/expert/model"+str(n)+'/model'+str(n)+".fzn"
            elif solver=='jacop':
                begin=time.time()
                command = "java -cp jacop-4.7.0.jar org.jacop.fz.Fz2jacop playingmode1/expert/model"+str(n)+'/model'+str(n)+".fzn"
            elif solver=='choco':
                begin = time.time()
                command ="java -cp choco-parsers-4.10.3-jar-with-dependencies.jar org.chocosolver.parser.flatzinc.ChocoFZN playingmode1/expert/model"+str(n)+'/model'+str(n)+".fzn"
            else:
                command = 'timeout 1800 minizinc.exe --solver ' + solver + " " + 'playingmode1/expert/model'+str(n)+'/'+name + " --output-time --sac"
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
            