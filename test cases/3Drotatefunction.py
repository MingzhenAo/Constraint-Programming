# -*- coding: utf-8 -*-
"""
Created on Wed Aug 26 13:11:48 2020

@author: Mingzhen Ao
"""
a1=[(0,0,0),(0,1,0),(1,1,0),(0,0,1),(0,1,-1)]
#roteta 90 around XY(anticlockwise)
def rotateXY(a):
    new_element=[]
    for element in a:
        x=element[0]
        y=element[1]
        z=element[2]
        new_unit=(0-y,x,z)
        new_element.append(new_unit)
    return new_element
#choose rotate 90,180 or 270 aroungd XY
def rotateXY1(a,n):
    if n==0:
        result=a
    elif n==1:
        result=rotateXY(a)
    elif n==2:
        result=rotateXY(rotateXY(a))
    elif n==3:
        result=rotateXY(rotateXY(rotateXY(a)))
    return result
#roteta 90 around YZ(anticlockwise)
def rotateYZ(a):
    new_element=[]
    for element in a:
        x=element[0]
        y=element[1]
        z=element[2]
        new_unit=(x,0-z,y)
        new_element.append(new_unit)
    return new_element
#choose rotate 90,180 or 270 aroungd YZ
def rotateYZ1(a,n):
    if n==0:
        result=a
    elif n==1:
        result=rotateYZ(a)
    elif n==2:
        result=rotateYZ(rotateYZ(a))
    elif n==3:
        result=rotateYZ(rotateYZ(rotateYZ(a)))
    return result
#roteta 90 around XZ(anticlockwise)
def rotateXZ(a):
    new_element=[]
    for element in a:
        x=element[0]
        y=element[1]
        z=element[2]
        new_unit=(0-z,y,x)
        new_element.append(new_unit)
    return new_element
#choose rotate 90,180 or 270 aroungd XZ
def rotateXZ1(a,n):
    if n==0:
        result=a
    elif n==1:
        result=rotateXZ(a)
    elif n==2:
        result=rotateXZ(rotateXZ(a))
    elif n==3:
        result=rotateXZ(rotateXZ(rotateYZ(a)))
    return result
#rotate around one dimension
def rotateonedimension(a1):
  oneD_list=[]
  #XY
  a2=rotateXY1(a1,1)
  a3=rotateXY1(a1,2)
  a4=rotateXY1(a1,3)
  #YZ
  a5=rotateYZ1(a1,1)
  a6=rotateYZ1(a1,2)
  a7=rotateYZ1(a1,3)
  #XZ
  a8=rotateXZ1(a1,1)
  a9=rotateYZ1(a1,2)
  a10=rotateYZ1(a1,3)
  oneD_list.append(tuple(a1))
  oneD_list.append(tuple(a2))
  oneD_list.append(tuple(a3))
  oneD_list.append(tuple(a4))
  oneD_list.append(tuple(a5))
  oneD_list.append(tuple(a6))
  oneD_list.append(tuple(a7))
  oneD_list.append(tuple(a8))
  oneD_list.append(tuple(a9))
  oneD_list.append(tuple(a10))
  return oneD_list
#rotate around two dimension
def rotatetwodimension(a1):
  twoD_list=[]
  #XY and YZ
  a11=rotateXY1(rotateYZ1(a1, 1),1)
  a12=rotateXY1(rotateYZ1(a1, 1),2)
  a13=rotateXY1(rotateYZ1(a1, 1),3)
  a14=rotateXY1(rotateYZ1(a1, 2),1)
  a15=rotateXY1(rotateYZ1(a1, 2),2)
  a16=rotateXY1(rotateYZ1(a1, 2),3)
  a17=rotateXY1(rotateYZ1(a1, 3),1)
  a18=rotateXY1(rotateYZ1(a1, 3),2)
  a19=rotateXY1(rotateYZ1(a1, 3),3)
  #XY and XZ
  a20=rotateXY1(rotateXZ1(a1, 1),1)
  a21=rotateXY1(rotateXZ1(a1, 1),2)
  a22=rotateXY1(rotateXZ1(a1, 1),3)
  a23=rotateXY1(rotateXZ1(a1, 2),1)
  a24=rotateXY1(rotateXZ1(a1, 2),2)
  a25=rotateXY1(rotateXZ1(a1, 2),3)
  a26=rotateXY1(rotateXZ1(a1, 3),1)
  a27=rotateXY1(rotateXZ1(a1, 3),2)
  a28=rotateXY1(rotateXZ1(a1, 3),3)
  #XZ and YZ
  a29=rotateXZ1(rotateYZ1(a1, 1),1)
  a30=rotateXZ1(rotateYZ1(a1, 1),2)
  a31=rotateXZ1(rotateYZ1(a1, 1),3)
  a32=rotateXZ1(rotateYZ1(a1, 2),1)
  a33=rotateXZ1(rotateYZ1(a1, 2),2)
  a34=rotateXZ1(rotateYZ1(a1, 2),3)
  a35=rotateXZ1(rotateYZ1(a1, 3),1)
  a36=rotateXZ1(rotateYZ1(a1, 3),2)
  a37=rotateXZ1(rotateYZ1(a1, 3),3)
  twoD_list.append(tuple(a11))
  twoD_list.append(tuple(a12))
  twoD_list.append(tuple(a13))
  twoD_list.append(tuple(a14))
  twoD_list.append(tuple(a15))
  twoD_list.append(tuple(a16))
  twoD_list.append(tuple(a17))
  twoD_list.append(tuple(a18))
  twoD_list.append(tuple(a19))
  twoD_list.append(tuple(a20))
  twoD_list.append(tuple(a21))
  twoD_list.append(tuple(a22))
  twoD_list.append(tuple(a23))
  twoD_list.append(tuple(a24))
  twoD_list.append(tuple(a25))
  twoD_list.append(tuple(a26))
  twoD_list.append(tuple(a27))
  twoD_list.append(tuple(a28))
  twoD_list.append(tuple(a29))
  twoD_list.append(tuple(a30))
  twoD_list.append(tuple(a31))
  twoD_list.append(tuple(a32))
  twoD_list.append(tuple(a33))
  twoD_list.append(tuple(a34))
  twoD_list.append(tuple(a35))
  twoD_list.append(tuple(a36))
  twoD_list.append(tuple(a37))
  return twoD_list
   
  
def rotatethreedimension(a1):
  threeD_list=[]
  a38=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 1),1)
  a39=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 1),2)
  a40=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 1),3)
  a41=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 2),1)
  a42=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 2),2)
  a43=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 2),3)
  a44=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 3),1)
  a45=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 3),2)
  a46=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 3),3)
  
  a47=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 1),1)
  a48=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 1),2)
  a49=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 1),3)
  a50=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 2),1)
  a51=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 2),2)
  a52=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 2),3)
  a53=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 3),1)
  a54=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 3),2)
  a55=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 3),3)
  
  a56=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 1),1)
  a57=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 1),2)
  a58=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 1),3)
  a59=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 2),1)
  a60=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 2),2)
  a61=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 2),3)
  a62=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 3),1)
  a63=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 3),2)
  a64=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 3),3)
  threeD_list.append(tuple(a38))
  threeD_list.append(tuple(a39))
  threeD_list.append(tuple(a40))
  threeD_list.append(tuple(a41))
  threeD_list.append(tuple(a42))
  threeD_list.append(tuple(a43))
  threeD_list.append(tuple(a44))
  threeD_list.append(tuple(a45))
  threeD_list.append(tuple(a46))
  threeD_list.append(tuple(a47))
  threeD_list.append(tuple(a48))
  threeD_list.append(tuple(a49))
  threeD_list.append(tuple(a50))
  threeD_list.append(tuple(a51))
  threeD_list.append(tuple(a52))
  threeD_list.append(tuple(a53))
  threeD_list.append(tuple(a54))
  threeD_list.append(tuple(a55))
  threeD_list.append(tuple(a56))
  threeD_list.append(tuple(a57))
  threeD_list.append(tuple(a58))
  threeD_list.append(tuple(a59))
  threeD_list.append(tuple(a60))
  threeD_list.append(tuple(a61))
  threeD_list.append(tuple(a62))
  threeD_list.append(tuple(a63))
  threeD_list.append(tuple(a64))
  return threeD_list
   
  
all_list=rotateonedimension(a1)
all_list+=rotatetwodimension(a1)
all_list+=rotatethreedimension(a1)
print(all_list)
print(len(all_list))
print(set(all_list))
print(len(all_list))
      



















