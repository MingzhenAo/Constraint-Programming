# -*- coding: utf-8 -*-
"""
Created on Sat Oct  3 04:10:45 2020

@author: Mingzhen Ao
"""

from subprocess import STDOUT, check_output
import time
import os
import win32api
import win32con
modes=['playingmode1']
difficulties=['wizard']
for mode in modes:
   for dif in difficulties:
     for i in range(2,9):
        command='docker exec mycontainer /bin/bash -c "timeout 1805 solver  /test_container/Desktop/project-2020-s2-puzzle-constraints/ZIGZAGpuzzler/'+mode+'/'+dif+'/model'+str(i)+'/model'+str(i)+'.mzn"'
        file = open(mode+'/'+dif+'/model'+str(i)+'/'+'model' + str(i) +"izplus"+'.log', 'w')
        try:
           begin=time.time()
           text= check_output(command, stderr=STDOUT, timeout=1800,shell=True)
           text_string = text.decode(encoding='UTF-8')
           file.write(text_string)
           end = time.time()
           file.write("the excute time:"+str(end-begin))
        except Exception:
            file.write('timeout-30minutes\n')