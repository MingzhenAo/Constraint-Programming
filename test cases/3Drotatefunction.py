# -*- coding: utf-8 -*-
"""
Created on Wed Aug 26 13:11:48 2020

@author: Mingzhen Ao
"""
import os
a1=[[0,0,0],[1,0,0],[0,0,1],[0,1,1],[1,0,-1]]
def rotateXY(a):
    #roteta 90 (anticlockwise)
    new_element=[]
    for element in a:
        x=element[0]
        y=element[1]
        z=element[2]
        new_unit=[]
        new_unit.append(0-y)
        new_unit.append(x)
        new_unit.append(z)
        new_element.append(new_unit)
    return new_element
def mirrorXY(a):
    new_element=[]
    for element in a:
        x=element[0]
        y=element[1]
        z=element[2]
        new_unit=[]
        new_unit.append(x)
        new_unit.append(0-y)
        new_unit.append(0-z)
        new_element.append(new_unit)
    return new_element
def rotateYZ(a):
    #roteta 90 (anticlockwise)
    new_element=[]
    for element in a:
        x=element[0]
        y=element[1]
        z=element[2]
        new_unit=[]
        new_unit.append(x)
        new_unit.append(0-z)
        new_unit.append(y)
        new_element.append(new_unit)
    return new_element
def mirrorYZ(a):
    new_element=[]
    for element in a:
        x=element[0]
        y=element[1]
        z=element[2]
        new_unit=[]
        new_unit.append(0-x)
        new_unit.append(y)
        new_unit.append(0-z)
        new_element.append(new_unit)
    return new_element
def rotateXZ(a):
    #roteta 90 (anticlockwise)
    new_element=[]
    for element in a:
        x=element[0]
        y=element[1]
        z=element[2]
        new_unit=[]
        new_unit.append(0-z)
        new_unit.append(y)
        new_unit.append(x)
        new_element.append(new_unit)
    return new_element
def mirrorXZ(a):
    new_element=[]
    for element in a:
        x=element[0]
        y=element[1]
        z=element[2]
        new_unit=[]
        new_unit.append(x)
        new_unit.append(0-y)
        new_unit.append(0-z)
        new_element.append(new_unit)
    return new_element
def printf(a1):
  all_situation=[a1]
  a2=rotateXY(a1)
  a3=rotateXY(a2)
  a4=rotateXY(a3)
  a5=mirrorXY(a1)
  a6=rotateXY(a5)
  a7=rotateXY(a6)
  a8=rotateXY(a7)
  #YZ
  a9=rotateYZ(a1)
  a10=rotateYZ(a9)
  a11=rotateYZ(a10)
  a12=mirrorYZ(a1)
  a13=rotateYZ(a12)
  a14=rotateYZ(a13)
  a15=rotateYZ(a14)
  #XZ
  a16=rotateXZ(a1)
  a17=rotateYZ(a16)
  a18=rotateYZ(a17)
  a19=mirrorYZ(a1)
  a20=rotateYZ(a19)
  a21=rotateYZ(a20)
  a22=rotateYZ(a21)
  all_situation.append(a2)
  all_situation.append(a3)
  all_situation.append(a4)
  all_situation.append(a5)
  all_situation.append(a6)
  all_situation.append(a7)
  all_situation.append(a8)
  all_situation.append(a9)
  all_situation.append(a10)
  all_situation.append(a11)
  all_situation.append(a12)
  all_situation.append(a13)
  all_situation.append(a14)
  all_situation.append(a15)
  all_situation.append(a16)
  all_situation.append(a17)
  all_situation.append(a18)
  all_situation.append(a19)
  all_situation.append(a20)
  all_situation.append(a21)
  all_situation.append(a22)
  save_list=[]
  for situation in all_situation:
      save_list.append("&(d=a+"+str(situation[1][0])+",e=b+"+str(situation[1][1])+",f=c+"+str(situation[1][2])+", g=a+"+str(situation[2][0])+",h=b+"+\
            str(situation[2][1])+",i=c+"+str(situation[2][2])+",j=a+"+str(situation[3][0])+",k=b+"+str(situation[3][1])+",l=c+"+str(situation[3][2])+\
              ",m=a+"+str(situation[4][0])+",n=b+"+str(situation[4][1])+",o=c+"+str(situation[4][2])+')or\\')
  return save_list
with open('example.txt','w') as file:
     for line in printf(a1):
         file.write(line)

      



















