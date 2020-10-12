# -*- coding: utf-8 -*-
"""
Created on Wed Sep 30 22:30:40 2020

@author: Mingzhen Ao
"""
from subprocess import STDOUT, check_output
import time
import os
import win32api
import win32con
#script
difficulties=['wizard']
for dif in difficulties:
  for i in range(16,25):
    command='docker exec mycontainer /bin/bash -c "timeout 1805 solver  /test_container/Desktop/project-2020-s2-puzzle-constraints/IQtwist/'+dif+'/model'+str(i)+'/model'+str(i)+'.mzn"'
    file = open(dif+'/model'+str(i)+'/'+'model' + str(i) +"izplus"+'.log', 'w')
    try:
       begin=time.time()
       text= check_output(command, stderr=STDOUT, timeout=1800,shell=True)
       text_string = text.decode(encoding='UTF-8')
       file.write(text_string)
       end = time.time()
       file.write("the excute time:"+str(end-begin))
    except Exception:
        file.write('timeout-30minutes\n')