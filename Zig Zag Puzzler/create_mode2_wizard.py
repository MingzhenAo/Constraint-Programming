# -*- coding: utf-8 -*-
"""
Created on Wed Sep  9 15:58:20 2020

@author: Mingzhen Ao
"""

import os
from os import path

"""
There are all the wizard situations
The order of pieces [(Vy1,Vy2,Vy3,Vy4),(Vb11,Vb12,Vb13,Vb14,Vb15),(Vb21,Vb22,Vb23,Vb24,Vb25),(Vg11,Vg12,Vg13,Vg14),
(Vg21,Vg22,Vg23),(Vr11,Vr12,Vr13),(Vr21,Vr22,Vr23),(Vo1,Vo2,Vo3,Vo4),(Vp1,Vp2,Vp3,Vp4)]
"""
wizard = [
    [(), (), (), (), (), (), (), (), (243, 343, 333, 244)],
    [(), (), (), (), (), (), (), (), ()],
    [(122, 222, 322, 121), (), (), (), (), (), (), (), ()],
    [(), (), (), (332, 333, 343, 344), (), (), (), (), ()],
    [(), (), (133, 132, 143, 243, 122), (), (), (222, 232, 233), (), (), ()],
    [(), (), (443, 433, 444, 344, 432), (), (), (111, 121, 122), (), (), ()],
    [(), (343, 333, 433, 344, 332), (), (), (), (), (), (), ()],
    [(), (), (243, 233, 343, 344, 133), (), (), (), (), (), ()],
]
correspond = [
    ("Vy1", "Vy2", "Vy3", "Vy4"),
    ("Vb11", "Vb12", "Vb13", "Vb14", "Vb15"),
    ("Vb21", "Vb22", "Vb23", "Vb24", "Vb25"),
    ("Vg11", "Vg12", "Vg13", "Vg14"),
    ("Vg21", "Vg22", "Vg23"),
    ("Vr11", "Vr12", "Vr13"),
    ("Vr21", "Vr22", "Vr23"),
    ("Vo1", "Vo2", "Vo3", "Vo4"),
    ("Vp1", "Vp2", "Vp3", "Vp4"),
]
n = 1
while n < 9:
    k = int(n - 1)
    element = wizard[k]
    f = open("CSPmodelmode2.mzn")
    name = "model" + str(n) + ".mzn"
    if not path.isdir("playingmode2/wizard"):
        os.mkdir("playingmode2/wizard")
    if not path.isdir("playingmode2/wizard/model" + str(n)):
        os.mkdir("playingmode2/wizard/model" + str(n))
    with open("playingmode2/wizard/model" + str(n) + "/" + name, "w") as f1:
        for line in f:
            f1.write(line)
        if n == 1:
            con1 = "constraint (Vr11=422 \/  Vr12=422);"
            f1.write(con1)
            f1.write("\n")
        if n == 2:
            con1 = "constraint ((Vo1=232/\Vo2=222/\Vo3=233/\Vo4=132) \/ (Vo1=232/\Vo2=332/\Vo3=233/\Vo4=222));\n"
            con2 = "constraint ((Vg11=422/\Vg12=432/\ Vg13=433/\ Vg14=443) \/(Vg11=421/\Vg12=422/\ Vg13=432/\ Vg14=433));"
            f1.write(con1)
            f1.write(con2)
            f1.write("\n")
        if n == 3:
            con1 = "constraint ((Vr11=111 /\ Vr12=211) \/ (Vr12=111 /\ Vr11=211));"
            f1.write(con1)
            f1.write("\n")
        if n == 4:
            cons = "constraint ((Vr11=411/\Vr12=511/\Vr13=421)  \/ (Vr11=511/\Vr12=411/\Vr13=521));"
            f1.write(cons)
            f1.write("\n")
        m = 0
        while m < len(element):
            f1.write("\n")
            if len(element[m]) != 0:
                ele_num = 0
                text = "\n"
                while ele_num < len(element[m]):
                    text += (
                        "constraint "
                        + correspond[m][ele_num]
                        + " = "
                        + str(element[m][ele_num])
                        + ";\n"
                    )
                    ele_num += 1
                f1.write(text)
            elif m == 0:
                f = open("piececonstraints/Vy.txt")
                for line in f:
                    f1.write(line)
            elif m == 1:
                f = open("piececonstraints/Vb1.txt")
                for line in f:
                    f1.write(line)
            elif m == 2:
                f = open("piececonstraints/Vb2.txt")
                for line in f:
                    f1.write(line)
            elif m == 3:
                f = open("piececonstraints/Vg1.txt")
                for line in f:
                    f1.write(line)
            elif m == 4:
                f = open("piececonstraints/Vg2.txt")
                for line in f:
                    f1.write(line)
            elif m == 5:
                f = open("piececonstraints/Vr1.txt")
                for line in f:
                    f1.write(line)
            elif m == 6:
                f = open("piececonstraints/Vr2.txt")
                for line in f:
                    f1.write(line)
            elif m == 7:
                f = open("piececonstraints/Vo.txt")
                for line in f:
                    f1.write(line)
            elif m == 8:
                f = open("piececonstraints/Vp.txt")
                for line in f:
                    f1.write(line)
            m += 1
    os.system(
        "minizinc.exe -c --solver org.minizinc.mzn-fzn"
        + "  playingmode2/wizard/model"
        + str(n)
        + "/"
        + name
        + " --sac"
    )
    n += 1
