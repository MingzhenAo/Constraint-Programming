# -*- coding: utf-8 -*-
"""
Created on Wed Sep 30 22:30:40 2020

@author: Mingzhen Ao
"""
from subprocess import STDOUT, check_output
import time
import os
#script
difficulties=['start','junior','master','expert','wizard']
for dif in difficulties:
  i=12
  while i<25:
    command='docker exec mycontainer /bin/bash -c "solver  /test_container/Desktop/project-2020-s2-puzzle-constraints/IQtwist/'+dif+'/model'+str(i)+'/model'+str(i)+'.mzn"'
    file = open(dif+'/model'+str(i)+'/'+'model' + str(i) +"izplus"+'.log', 'w')
    try:
       begin=time.time()
       text= check_output(command, stderr=STDOUT, timeout=1800,shell=True)
       text_string = text.decode(encoding='UTF-8')
       file.write(text_string)
       end = time.time()
       file.write("the excute time:"+str(end-begin))
    except Exception as e:
        print(e)
        file.write('timeout-30minutes\n')
    i+=1