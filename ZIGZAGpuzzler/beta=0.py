# -*- coding: utf-8 -*-
"""
Created on Mon Oct  5 05:10:17 2020

@author: Mingzhen Ao
"""

import math 
def calculate(a,g):
    x='x='+str(int(math.cos(a)))+'x+'+str(int((-math.sin(a)))*int((math.cos(g))))+'y+'+str(int(math.sin(a))*int(math.sin(g)))+'z'
    y='y='+str(int(math.sin(a)))+'x+'+str(int(math.cos(a))*int(math.cos(g)))+'y+'+str(int(-math.cos(a))*int(math.sin(g)))+'z'
    z='z='+str(int(math.sin(g)))+'y+'+str(int(math.cos(g)))+'z'
    print(x)
    print(y)
    print(z)
alpha=[0,math.pi/2,math.pi,math.pi*3/2]
gamma=[0,math.pi/2,math.pi,math.pi*3/2]
i=1
for a in alpha:
    for g in gamma:
        print(i)
        calculate(a,g)
        i+=1