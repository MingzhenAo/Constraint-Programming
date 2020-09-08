# -*- coding: utf-8 -*-
"""
Created on Wed Aug 26 13:11:48 2020

@author: Mingzhen Ao
"""
#VB1 (0,0,0),(0,1,0),(1,1,0),(0,0,1),(0,1,-1)
#VB2 
current=[(0,0,0),(1,0,0),(0,0,1),(0,1,1),(1,0,-1)]
#roteta 90 around XY(anticlockwise)
def rotateXY(xy):
    new_element=[]
    for element in xy:
        x=element[0]
        y=element[1]
        z=element[2]
        new_unit=(0-y,x,z)
        new_element.append(new_unit)
    return new_element
#choose rotate 90,180 or 270 aroungd XY
def rotateXY1(xy1,n):
    if n==0:
        result=xy1
    elif n==1:
        result=rotateXY(xy1)
    elif n==2:
        result=rotateXY(rotateXY(xy1))
    elif n==3:
        result=rotateXY(rotateXY(rotateXY(xy1)))
    return result
#roteta 90 around YZ(anticlockwise)
def rotateYZ(yz):
    new_element=[]
    for element in yz:
        x=element[0]
        y=element[1]
        z=element[2]
        new_unit=(x,0-z,y)
        new_element.append(new_unit)
    return new_element
#choose rotate 90,180 or 270 aroungd YZ
def rotateYZ1(yz1,n):
    if n==0:
        result=yz1
    elif n==1:
        result=rotateYZ(yz1)
    elif n==2:
        result=rotateYZ(rotateYZ(yz1))
    elif n==3:
        result=rotateYZ(rotateYZ(rotateYZ(yz1)))
    return result
#roteta 90 around XZ(anticlockwise)
def rotateXZ(xz):
    new_element=[]
    for element in xz:
        x=element[0]
        y=element[1]
        z=element[2]
        new_unit=(0-z,y,x)
        new_element.append(new_unit)
    return new_element
#choose rotate 90,180 or 270 aroungd XZ
def rotateXZ1(xz1,n):
    if n==0:
        result=xz1
    elif n==1:
        result=rotateXZ(xz1)
    elif n==2:
        result=rotateXZ(rotateXZ(xz1))
    elif n==3:
        result=rotateXZ(rotateXZ(rotateXZ(xz1)))
    return result

def all_roate_situation(a1):
    all_situations=[]
    a2=rotateXY1(rotateYZ1(rotateXZ1(a1,0), 0),1)
    a3=rotateXY1(rotateYZ1(rotateXZ1(a1,0), 0),2)
    a4=rotateXY1(rotateYZ1(rotateXZ1(a1,0), 0),3)
    a5=rotateXY1(rotateYZ1(rotateXZ1(a1,0), 1),0)
    a6=rotateXY1(rotateYZ1(rotateXZ1(a1,0), 1),1)
    a7=rotateXY1(rotateYZ1(rotateXZ1(a1,0), 1),2)
    a8=rotateXY1(rotateYZ1(rotateXZ1(a1,0), 1),3)
    a9=rotateXY1(rotateYZ1(rotateXZ1(a1,0), 2),0)
    a10=rotateXY1(rotateYZ1(rotateXZ1(a1,0), 2),1)
    a11=rotateXY1(rotateYZ1(rotateXZ1(a1,0), 2),2)
    a12=rotateXY1(rotateYZ1(rotateXZ1(a1,0), 2),3)
    a13=rotateXY1(rotateYZ1(rotateXZ1(a1,0), 3),0)
    a14=rotateXY1(rotateYZ1(rotateXZ1(a1,0), 3),1)
    a15=rotateXY1(rotateYZ1(rotateXZ1(a1,0), 3),2)
    a16=rotateXY1(rotateYZ1(rotateXZ1(a1,0), 3),3)
    a17=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 0),0)
    a18=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 0),1)
    a19=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 0),2)
    a20=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 0),3)
    a21=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 1),0)
    a22=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 1),1)
    a23=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 1),2)
    a24=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 1),3)
    a25=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 2),0)
    a26=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 2),1)
    a27=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 2),2)
    a28=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 2),3)
    a29=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 3),0)
    a30=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 3),1)
    a31=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 3),2)
    a32=rotateXY1(rotateYZ1(rotateXZ1(a1,1), 3),3)
    a33=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 0),0)
    a34=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 0),1)
    a35=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 0),2)
    a36=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 0),3)
    a37=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 1),0)
    a38=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 1),1)
    a39=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 1),2)
    a40=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 1),3)
    a41=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 2),0)
    a42=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 2),1)
    a43=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 2),2)
    a44=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 2),3)
    a45=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 3),0)
    a46=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 3),1)
    a47=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 3),2)
    a48=rotateXY1(rotateYZ1(rotateXZ1(a1,2), 3),3)
    a49=rotateXY1(rotateYZ1(rotateXZ1(a1,3), 0),0)
    a50=rotateXY1(rotateYZ1(rotateXZ1(a1,3), 0),1)
    a51=rotateXY1(rotateYZ1(rotateXZ1(a1,3), 0),2)
    a52=rotateXY1(rotateYZ1(rotateXZ1(a1,3), 0),3)
    a53=rotateXY1(rotateYZ1(rotateXZ1(a1,3), 1),0)
    a54=rotateXY1(rotateYZ1(rotateXZ1(a1,3), 1),1)
    a55=rotateXY1(rotateYZ1(rotateXZ1(a1,3), 1),2)
    a56=rotateXY1(rotateYZ1(rotateXZ1(a1,3), 1),3)
    a57=rotateXY1(rotateYZ1(rotateXZ1(a1,3), 2),0)
    a58=rotateXY1(rotateYZ1(rotateXZ1(a1,3), 2),1)
    a59=rotateXY1(rotateYZ1(rotateXZ1(a1,3), 2),2)
    a60=rotateXY1(rotateYZ1(rotateXZ1(a1,3), 2),3)
    a61=rotateXY1(rotateYZ1(rotateXZ1(a1,3), 3),0)
    a62=rotateXY1(rotateYZ1(rotateXZ1(a1,3), 3),1)
    a63=rotateXY1(rotateYZ1(rotateXZ1(a1,3), 3),2)
    a64=rotateXY1(rotateYZ1(rotateXZ1(a1,3), 3),3)
    all_situations.append(tuple(a1))
    all_situations.append(tuple(a2))
    all_situations.append(tuple(a3))
    all_situations.append(tuple(a4))
    all_situations.append(tuple(a5))
    all_situations.append(tuple(a6))
    all_situations.append(tuple(a7))
    all_situations.append(tuple(a8))
    all_situations.append(tuple(a9))
    all_situations.append(tuple(a10))
    all_situations.append(tuple(a11))
    all_situations.append(tuple(a12))
    all_situations.append(tuple(a13))
    all_situations.append(tuple(a14))
    all_situations.append(tuple(a15))
    all_situations.append(tuple(a16))
    all_situations.append(tuple(a17))
    all_situations.append(tuple(a18))
    all_situations.append(tuple(a19))
    all_situations.append(tuple(a20))
    all_situations.append(tuple(a21))
    all_situations.append(tuple(a22))
    all_situations.append(tuple(a23))
    all_situations.append(tuple(a24))
    all_situations.append(tuple(a25))
    all_situations.append(tuple(a26))
    all_situations.append(tuple(a27))
    all_situations.append(tuple(a28))
    all_situations.append(tuple(a29))
    all_situations.append(tuple(a30))
    all_situations.append(tuple(a31))
    all_situations.append(tuple(a32))
    all_situations.append(tuple(a33))
    all_situations.append(tuple(a34))
    all_situations.append(tuple(a35))
    all_situations.append(tuple(a36))
    all_situations.append(tuple(a37))
    all_situations.append(tuple(a38))
    all_situations.append(tuple(a39))
    all_situations.append(tuple(a40))
    all_situations.append(tuple(a41))
    all_situations.append(tuple(a42))
    all_situations.append(tuple(a43))
    all_situations.append(tuple(a44))
    all_situations.append(tuple(a45))
    all_situations.append(tuple(a46))
    all_situations.append(tuple(a47))
    all_situations.append(tuple(a48))
    all_situations.append(tuple(a49))
    all_situations.append(tuple(a50))
    all_situations.append(tuple(a51))
    all_situations.append(tuple(a52))
    all_situations.append(tuple(a53))
    all_situations.append(tuple(a54))
    all_situations.append(tuple(a55))
    all_situations.append(tuple(a56))
    all_situations.append(tuple(a57))
    all_situations.append(tuple(a58))
    all_situations.append(tuple(a59))
    all_situations.append(tuple(a60))
    all_situations.append(tuple(a61))
    all_situations.append(tuple(a62))
    all_situations.append(tuple(a63))
    all_situations.append(tuple(a64))
    return  all_situations
   
check={}
n=0
for element in all_roate_situation(current):
    n+=1
    if element not in check:
        check[element]=[n]
    else:
        check[element].append(n)
      
print(check)


















