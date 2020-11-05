# -*- coding: utf-8 -*-
"""
Created on Mon Oct 12 17:32:45 2020

@author: Mingzhen Ao
"""
import os
from os import path

"""
There are all the configurations for each difficulty.
Each element in each difficulty list represent the positions of the all variable.
Each tuple in each element represent the positions of corresponding piece.
For example, in the first tuple in first element in start,
(122,123,124,133) means Vy1=(1,2,2),
                        Vy2=(1,2,3),
                        Vy3=(1,2,4),
                        Vy4=(1,3,3).
The second tuple corresponds Vb.
The corresponding relationships has been represent in the correspond list below.
"""
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
start = [
    [
        (122, 123, 124, 133),
        (322, 312, 313, 222, 412),
        (241, 141, 231, 232, 151),
        (121, 131, 132, 142),
        (311, 411, 511),
        (114, 115, 214),
        (321, 331, 421),
        (),
        (113, 213, 223, 112),
    ],
    [
        (113, 213, 313, 214),
        (232, 231, 331, 222, 241),
        (124, 114, 123, 223, 115),
        (),
        (131, 132, 133),
        (411, 511, 421),
        (141, 151, 142),
        (312, 412, 311, 322),
        (112, 122, 121, 212),
    ],
    [
        (221, 321, 421, 331),
        (322, 312, 313, 222, 412),
        (241, 141, 231, 232, 151),
        (121, 131, 132, 142),
        (311, 411, 511),
        (114, 115, 214),
        (123, 133, 124),
        (),
        (),
    ],
    [
        (131, 141, 151, 142),
        (),
        (223, 222, 123, 133, 322),
        (),
        (311, 321, 331),
        (114, 115, 124),
        (213, 214, 313),
        (411, 421, 412, 511),
        (232, 231, 241, 132),
    ],
    [
        (131, 132, 133, 142),
        (322, 312, 313, 222, 412),
        (241, 141, 231, 232, 151),
        (),
        (311, 411, 511),
        (114, 115, 214),
        (321, 331, 421),
        (123, 124, 113, 223),
        (),
    ],
    [
        (131, 141, 151, 241),
        (133, 132, 232, 123, 142),
        (),
        (),
        (113, 213, 313),
        (411, 511, 412),
        (321, 421, 331),
        (114, 214, 124, 115),
        (222, 322, 312, 223),
    ],
    [
        (131, 141, 151, 241),
        (421, 411, 412, 321, 511),
        (223, 123, 222, 212, 124),
        (),
        (),
        (114, 115, 214),
        (132, 133, 142),
        (231, 221, 331, 232),
        (313, 312, 322, 213),
    ],
    [
        (311, 411, 511, 421),
        (142, 141, 241, 132, 151),
        (),
        (213, 313, 312, 412),
        (),
        (123, 122, 133),
        (),
        (114, 214, 124, 115),
        (231, 331, 321, 232),
    ],
]
junior = [
    [
        (113, 114, 115, 124),
        (),
        (231, 331, 321, 322, 241),
        (),
        (),
        (141, 151, 142),
        (213, 214, 223),
        (411, 511, 421, 412),
        (232, 132, 133, 222),
    ],
    [
        (),
        (331, 321, 322, 231, 421),
        (133, 123, 132, 232, 124),
        (),
        (111, 121, 131),
        (114, 115, 214),
        (222, 221, 122),
        (141, 142, 241, 151),
        (),
    ],
    [
        (122, 123, 124, 133),
        (313, 213, 223, 312, 214),
        (232, 231, 132, 142, 331),
        (),
        (),
        (411, 511, 412),
        (),
        (321, 311, 421, 322),
        (),
    ],
    [
        (131, 141, 151, 241),
        (421, 411, 412, 321, 511),
        (232, 231, 132, 142, 331),
        (),
        (),
        (222, 221, 322),
        (),
        (123, 223, 122, 133),
        (),
    ],
    [
        (),
        (),
        (241, 141, 231, 232, 151),
        (142, 132, 133, 123),
        (113, 213, 313),
        (411, 511, 421),
        (312, 311, 412),
        (114, 214, 124, 115),
        (),
    ],
    [
        (311, 321, 331, 421),
        (),
        (),
        (),
        (),
        (411, 511, 412),
        (132, 133, 142),
        (114, 214, 124, 115),
        (222, 322, 312, 223),
    ],
    [
        (311, 312, 313, 412),
        (223, 213, 113, 222, 214),
        (),
        (142, 132, 133, 123),
        (),
        (411, 511, 421),
        (114, 115, 124),
        (),
        (),
    ],
    [
        (113, 123, 133, 223),
        (142, 141, 241, 132, 151),
        (),
        (112, 212, 213, 313),
        (),
        (411, 511, 421),
        (312, 311, 412),
        (114, 214, 124, 115),
        (),
    ],
]
expert = [
    [
        (311, 411, 511, 412),
        (313, 213, 223, 312, 214),
        (),
        (),
        (),
        (321, 421, 322),
        (),
        (),
        (221, 231, 331, 222),
    ],
    [
        (),
        (),
        (232, 231, 132, 142, 331),
        (),
        (),
        (312, 313, 322),
        (),
        (222, 223, 122, 212),
        (111, 121, 221, 112),
    ],
    [
        (113, 114, 115, 124),
        (223, 222, 212, 123, 322),
        (),
        (312, 313, 213, 214),
        (),
        (132, 133, 142),
        (),
        (),
        (),
    ],
    [
        (122, 123, 124, 133),
        (322, 312, 313, 222, 412),
        (),
        (),
        (),
        (411, 511, 421),
        (114, 115, 214),
        (),
        (),
    ],
    [
        (),
        (212, 213, 223, 112, 313),
        (322, 321, 222, 232, 421),
        (),
        (),
        (411, 511, 412),
        (114, 115, 214),
        (),
        (),
    ],
    [
        (),
        (),
        (),
        (511, 411, 421, 321),
        (),
        (213, 214, 223),
        (231, 331, 232),
        (312, 313, 412, 322),
        (),
    ],
    [
        (311, 411, 511, 412),
        (),
        (322, 321, 222, 232, 421),
        (),
        (),
        (114, 115, 124),
        (213, 214, 313),
        (),
        (),
    ],
    [
        (311, 312, 313, 412),
        (),
        (),
        (241, 231, 331, 321),
        (),
        (411, 511, 421),
        (),
        (),
        (223, 123, 124, 213),
    ],
]
master = [
    [
        (),
        (313, 213, 223, 312, 214),
        (),
        (),
        (),
        (),
        (),
        (231, 331, 241, 232),
        (123, 122, 222, 133),
    ],
    [
        (221, 231, 241, 331),
        (),
        (),
        (),
        (),
        (141, 151, 142),
        (),
        (132, 122, 131, 232),
        (),
    ],
    [
        (122, 123, 124, 133),
        (),
        (),
        (312, 313, 213, 214),
        (113, 114, 115),
        (),
        (),
        (),
        (),
    ],
    [
        (),
        (142, 141, 241, 132, 151),
        (),
        (421, 321, 331, 231),
        (),
        (),
        (),
        (312, 313, 412, 322),
        (),
    ],
    [
        (131, 132, 133, 232),
        (),
        (),
        (),
        (),
        (),
        (),
        (141, 142, 241, 151),
        (231, 221, 222, 331),
    ],
    [
        (122, 132, 142, 133),
        (),
        (),
        (312, 313, 213, 214),
        (),
        (112, 113, 212),
        (),
        (),
        (),
    ],
    [
        (),
        (),
        (231, 331, 321, 322, 241),
        (),
        (),
        (114, 115, 124),
        (213, 214, 313),
        (),
        (),
    ],
    [
        (),
        (),
        (),
        (),
        (),
        (114, 115, 124),
        (),
        (312, 313, 412, 322),
        (213, 113, 123, 214),
    ],
]
wizard = [
    [(), (), (), (), (), (141, 151, 241), (312, 313, 412), (), (211, 111, 121, 212)],
    [(122, 123, 124, 133), (), (), (241, 231, 331, 321), (), (), (), (), ()],
    [(), (), (), (241, 231, 331, 321), (), (312, 313, 412), (), (), ()],
    [(212, 312, 412, 311), (), (), (321, 421, 411, 511), (), (), (), (), ()],
    [(122, 123, 124, 133), (), (), (), (), (), (), (312, 313, 412, 322), ()],
    [(), (), (), (211, 212, 312, 313), (), (123, 124, 133), (), (), ()],
    [(221, 231, 241, 331), (), (), (132, 142, 141, 151), (), (), (), (), ()],
    [(), (142, 141, 241, 132, 151), (), (), (), (), (), (321, 331, 221, 322), ()],
]
solvers = ["picat", "choco", "jacop", "Chuffed", "Yuck", "Or-tool", "Coin-bc", "Gurobi"]


def create_models(difficulty, difficulty_data):
    """
    This function aims to create 8 models for the corresponding difficulty.

    Parameters
    ----------
    difficulty : string
        "start", "junior", "expert", "master" or "wizard"
    difficulty_data : list
        The element in the list is a list which stores position information for each model.
    Returns
    -------
    None.
    """
    n = 1
    while n < 9:
        k = int(n - 1)
        element = difficulty_data[k]
        f = open("CSPmodel.mzn")
        name = "model" + str(n) + ".mzn"
        if not path.isdir("playingmode1"):
            os.mkdir("playingmode1")
        if not path.isdir("playingmode1/" + difficulty):
            os.mkdir("playingmode1/" + difficulty)
        if not path.isdir("playingmode1/" + difficulty + "/model" + str(n)):
            os.mkdir("playingmode1/" + difficulty + "/model" + str(n))
        with open(
            "playingmode1/" + difficulty + "/model" + str(n) + "/" + name, "w"
        ) as f1:
            for line in f:
                f1.write(line)
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
            + "  playingmode1/"
            + difficulty
            + "/model"
            + str(n)
            + "/"
            + name
            + " --sac"
        )
        n += 1


"""
The below codes aims to create all models
"""
create_models("start", start)
create_models("junior", junior)
create_models("expert", expert)
create_models("master", master)
create_models("wizard", wizard)
