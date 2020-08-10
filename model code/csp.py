# -*- coding: utf-8 -*-
"""
Created on Fri Aug  7 15:44:08 2020

@author: Mingzhen Ao
"""
import sys
import datetime
from constraint import *

a = [
    (1, 4), (2, 4), (3, 4), (4, 4), (5, 4), (6, 4), (7, 4), (8, 4),
    (1, 3), (2, 3), (3, 3), (4, 3), (5, 3), (6, 3), (7, 3), (8, 3),
    (1, 2), (2, 2), (3, 2), (4, 2), (5, 2), (6, 2), (7, 2), (8, 2),
    (1, 1), (2, 1), (3, 1), (4, 1), (5, 1), (6, 1), (7, 1), (8, 1)]

from constraint import *
starttime = datetime.datetime.now()
problem = Problem()
problem.addVariables(['Vy11', 'Vy12', 'Vy13',
                      'Vy21', 'Vy22', 'Vy23', 'Vy24', 'Vy25',
                      'Vb11', 'Vb12', 'Vb13', 'Vb14', 'Vb15',
                      'Vb21', 'Vb22', 'Vb23', 'Vb24',
                      'Vg11', 'Vg12', 'Vg13', 'Vg14',
                      'Vg21', 'Vg22', 'Vg23',
                      'Vr11', 'Vr12', 'Vr13', 'Vr14',
                      'Vr21', 'Vr22', 'Vr23', 'Vr24'], a)

problem.addVariables(['Vpr','Vpb1','Vpb2','Vpy1','Vpy2','Vpg1','Vpg2'],a or[(0,0)])

problem.addConstraint(AllDifferentConstraint(),[
                      'Vy11', 'Vy12', 'Vy13',
                      'Vy21', 'Vy22', 'Vy23', 'Vy24', 'Vy25',
                      'Vb11', 'Vb12', 'Vb13', 'Vb14', 'Vb15',
                      'Vb21', 'Vb22', 'Vb23', 'Vb24',
                      'Vg11', 'Vg12', 'Vg13', 'Vg14',
                      'Vg21', 'Vg22', 'Vg23',
                      'Vr11', 'Vr12', 'Vr13', 'Vr14',
                      'Vr21', 'Vr22', 'Vr23', 'Vr24'])
# piece Vb1
problem.addConstraint(
    lambda p1, p2, p3, p4, p5: (p2[0] == p1[0] and p2[1] == p1[1] + 1 and p3[0] == p1[0] + 1 and p3[1] == p1[1] + 1
                                and p4[0] == p1[0] and p4[1] == p1[1] + 2 and p5[0] == p1[0] + 1 and p5[1] == p1[
                                    1] + 2) or
                               (p2[0] == p1[0] - 1 and p2[1] == p1[1] and p3[0] == p1[0] - 1 and p3[1] == p1[1] + 1
                                and p4[0] == p1[0] - 2 and p4[1] == p1[1] and p5[0] == p1[0] - 2 and p5[1] == p1[
                                    1] + 1) or
                               (p2[0] == p1[0] and p2[1] == p1[1] - 1 and p3[0] == p1[0] - 1 and p3[1] == p1[1] - 1
                                and p4[0] == p1[0] and p4[1] == p1[1] - 2 and p5[0] == p1[0] - 1 and p5[1] == p1[
                                    1] - 2) or
                               (p2[0] == p1[0] + 1 and p2[1] == p1[1] and p3[0] == p1[0] + 1 and p3[1] == p1[1] - 1
                                and p4[0] == p1[0] + 2 and p4[1] == p1[1] and p5[0] == p1[0] + 2 and p5[1] == p1[
                                    1] - 1) or
                               (p2[0] == p1[0] and p2[1] == p1[1] + 1 and p3[0] == p1[0] - 1 and p3[1] == p1[1] + 1
                                and p4[0] == p1[0] and p4[1] == p1[1] + 2 and p5[0] == p1[0] - 1 and p5[1] == p1[
                                    1] + 2) or
                               (p2[0] == p1[0] - 1 and p2[1] == p1[1] and p3[0] == p1[0] - 1 and p3[1] == p1[1] - 1
                                and p4[0] == p1[0] - 2 and p4[1] == p1[1] and p5[0] == p1[0] - 2 and p5[1] == p1[
                                    1] - 1) or
                               (p2[0] == p1[0] and p2[1] == p1[1] - 1 and p3[0] == p1[0] + 1 and p3[1] == p1[1] - 1
                                and p4[0] == p1[0] and p4[1] == p1[1] - 2 and p5[0] == p1[0] + 1 and p5[1] == p1[
                                    1] - 2) or
                               (p2[0] == p1[0] + 1 and p2[1] == p1[1] and p3[0] == p1[0] + 1 and p3[1] == p1[1] + 1
                                and p4[0] == p1[0] + 2 and p4[1] == p1[1] and p5[0] == p1[0] + 2 and p5[1] == p1[1] + 1)
    ,
    ('Vb11', 'Vb12', 'Vb13', 'Vb14', 'Vb15'))

# piece Vb2
problem.addConstraint(
    lambda p1, p2, p3, p4: (p2[0] == p1[0] + 1 and p2[1] == p1[1] and p3[0] == p1[0] + 2 and p3[1] == p1[1]
                            and p4[0] == p1[0] + 3 and p4[1] == p1[1]) or
                           (p2[0] == p1[0] and p2[1] == p1[1] + 1 and p3[0] == p1[0] and p3[1] == p1[1] + 2
                            and p4[0] == p1[0] and p4[1] == p1[1] + 3) or
                           (p2[0] == p1[0] - 1 and p2[1] == p1[1] and p3[0] == p1[0] - 2 and p3[1] == p1[1]
                            and p4[0] == p1[0] - 3 and p4[1] == p1[1]) or
                           (p2[0] == p1[0] and p2[1] == p1[1] - 1 and p3[0] == p1[0] and p3[1] == p1[1] - 2
                            and p4[0] == p1[0] and p4[1] == p1[1] - 3)
    ,
    ('Vb21', 'Vb22', 'Vb23', 'Vb24'))

# piece Vy1
problem.addConstraint(
    lambda p1, p2, p3: (p2[0] == p1[0] + 1 and p2[1] == p1[1] and p3[0] == p1[0] + 2 and p3[1] == p1[1]) or
                       (p2[0] == p1[0] and p2[1] == p1[1] + 1 and p3[0] == p1[0] and p3[1] == p1[1] + 2) or
                       (p2[0] == p1[0] - 1 and p2[1] == p1[1] and p3[0] == p1[0] - 2 and p3[1] == p1[1]) or
                       (p2[0] == p1[0] and p2[1] == p1[1] - 1 and p3[0] == p1[0] and p3[1] == p1[1] - 2)
    ,
    ('Vy11', 'Vy12', 'Vy13'))

# piece Vy2
problem.addConstraint(
    lambda p1, p2, p3, p4, p5: (p2[0] == p1[0] + 1 and p2[1] == p1[1] and p3[0] == p1[0] + 1 and p3[1] == p1[1] + 1
                                and p4[0] == p1[0] + 2 and p4[1] == p1[1] + 1 and p5[0] == p1[0] + 1 and p5[1] == p1[
                                    1] + 2) or
                               (p2[0] == p1[0] and p2[1] == p1[1] + 1 and p3[0] == p1[0] - 1 and p3[1] == p1[1] + 1
                                and p4[0] == p1[0] - 1 and p4[1] == p1[1] + 2 and p5[0] == p1[0] - 2 and p5[1] == p1[
                                    1] + 1) or
                               (p2[0] == p1[0] - 1 and p2[1] == p1[1] and p3[0] == p1[0] - 1 and p3[1] == p1[1] - 1
                                and p4[0] == p1[0] - 2 and p4[1] == p1[1] - 1 and p5[0] == p1[0] - 1 and p5[1] == p1[
                                    1] - 2) or
                               (p2[0] == p1[0] and p2[1] == p1[1] - 1 and p3[0] == p1[0] + 1 and p3[1] == p1[1] - 1
                                and p4[0] == p1[0] + 1 and p4[1] == p1[1] - 2 and p5[0] == p1[0] + 2 and p5[1] == p1[
                                    1] - 1) or
                               (p2[0] == p1[0] - 1 and p2[1] == p1[1] and p3[0] == p1[0] - 1 and p3[1] == p1[1] + 1
                                and p4[0] == p1[0] - 2 and p4[1] == p1[1] + 1 and p5[0] == p1[0] - 1 and p5[1] == p1[
                                    1] + 2) or
                               (p2[0] == p1[0] and p2[1] == p1[1] - 1 and p3[0] == p1[0] - 1 and p3[1] == p1[1] - 1
                                and p4[0] == p1[0] - 1 and p4[1] == p1[1] - 2 and p5[0] == p1[0] - 2 and p5[1] == p1[
                                    1] - 1) or
                               (p2[0] == p1[0] + 1 and p2[1] == p1[1] and p3[0] == p1[0] + 1 and p3[1] == p1[1] - 1
                                and p4[0] == p1[0] + 2 and p4[1] == p1[1] - 1 and p5[0] == p1[0] + 1 and p5[1] == p1[
                                    1] - 2) or
                               (p2[0] == p1[0] and p2[1] == p1[1] + 1 and p3[0] == p1[0] + 1 and p3[1] == p1[1] + 1
                                and p4[0] == p1[0] + 1 and p4[1] == p1[1] + 2 and p5[0] == p1[0] + 2 and p5[1] == p1[
                                    1] + 1)
    ,
    ('Vy21', 'Vy22', 'Vy23', 'Vy24', 'Vy25'))
# piece Vg1
problem.addConstraint(
    lambda p1, p2, p3, p4: (p2[0] == p1[0] + 1 and p2[1] == p1[1] and p3[0] == p1[0] + 2 and p3[1] == p1[1]
                            and p4[0] == p1[0] + 1 and p4[1] == p1[1] + 1) or
                           (p2[0] == p1[0] and p2[1] == p1[1] + 1 and p3[0] == p1[0] and p3[1] == p1[1] + 2
                            and p4[0] == p1[0] - 1 and p4[1] == p1[1] + 1) or
                           (p2[0] == p1[0] - 1 and p2[1] == p1[1] and p3[0] == p1[0] - 2 and p3[1] == p1[1]
                            and p4[0] == p1[0] - 1 and p4[1] == p1[1] - 1) or
                           (p2[0] == p1[0] and p2[1] == p1[1] - 1 and p3[0] == p1[0] and p3[1] == p1[1] - 2
                            and p4[0] == p1[0] + 1 and p4[1] == p1[1] - 1) or
                           (p2[0] == p1[0] - 1 and p2[1] == p1[1] and p3[0] == p1[0] - 2 and p3[1] == p1[1]
                            and p4[0] == p1[0] - 1 and p4[1] == p1[1] - 1) or
                           (p2[0] == p1[0] and p2[1] == p1[1] - 1 and p3[0] == p1[0] and p3[1] == p1[1] - 2
                            and p4[0] == p1[0] - 1 and p4[1] == p1[1] - 1) or
                           (p2[0] == p1[0] + 1 and p2[1] == p1[1] and p3[0] == p1[0] + 2 and p3[1] == p1[1]
                            and p4[0] == p1[0] + 1 and p4[1] == p1[1] - 1) or
                           (p2[0] == p1[0] and p2[1] == p1[1] + 1 and p3[0] == p1[0] and p3[1] == p1[1] + 2
                            and p4[0] == p1[0] + 1 and p4[1] == p1[1] + 1)
    ,
    ('Vg11', 'Vg12', 'Vg13', 'Vg14'))

# piece Vg2
problem.addConstraint(
    lambda p1, p2, p3: (p2[0] == p1[0] + 1 and p2[1] == p1[1] and p3[0] == p1[0] + 1 and p3[1] == p1[1] + 1) or
                       (p2[0] == p1[0] and p2[1] == p1[1] + 1 and p3[0] == p1[0] - 1 and p3[1] == p1[1] + 1) or
                       (p2[0] == p1[0] - 1 and p2[1] == p1[1] and p3[0] == p1[0] - 1 and p3[1] == p1[1] - 1) or
                       (p2[0] == p1[0] and p2[1] == p1[1] - 1 and p3[0] == p1[0] + 1 and p3[1] == p1[1] - 1) or
                       (p2[0] == p1[0] - 1 and p2[1] == p1[1] and p3[0] == p1[0] - 1 and p3[1] == p1[1] + 1) or
                       (p2[0] == p1[0] and p2[1] == p1[1] - 1 and p3[0] == p1[0] - 1 and p3[1] == p1[1] - 1) or
                       (p2[0] == p1[0] + 1 and p2[1] == p1[1] and p3[0] == p1[0] + 1 and p3[1] == p1[1] - 1) or
                       (p2[0] == p1[0] and p2[1] == p1[1] + 1 and p3[0] == p1[0] + 1 and p3[1] == p1[1] + 1)
    ,
    ('Vg21', 'Vg22', 'Vg23'))
# piece Vr1
problem.addConstraint(
    lambda p1, p2, p3, p4: (p2[0] == p1[0] + 1 and p2[1] == p1[1] and p3[0] == p1[0] + 1 and p3[1] == p1[1] + 1
                            and p4[0] == p1[0] + 2 and p4[1] == p1[1] + 1) or
                           (p2[0] == p1[0] and p2[1] == p1[1] + 1 and p3[0] == p1[0] - 1 and p3[1] == p1[1] + 1
                            and p4[0] == p1[0] - 1 and p4[1] == p1[1] + 2) or
                           (p2[0] == p1[0] - 1 and p2[1] == p1[1] and p3[0] == p1[0] - 1 and p3[1] == p1[1] - 1
                            and p4[0] == p1[0] - 2 and p4[1] == p1[1] - 1) or
                           (p2[0] == p1[0] and p2[1] == p1[1] - 1 and p3[0] == p1[0] + 1 and p3[1] == p1[1] - 1
                            and p4[0] == p1[0] + 1 and p4[1] == p1[1] - 2) or
                           (p2[0] == p1[0] - 1 and p2[1] == p1[1] and p3[0] == p1[0] - 1 and p3[1] == p1[1] + 1
                            and p4[0] == p1[0] - 2 and p4[1] == p1[1] + 1) or
                           (p2[0] == p1[0] and p2[1] == p1[1] - 1 and p3[0] == p1[0] - 1 and p3[1] == p1[1] - 1
                            and p4[0] == p1[0] - 1 and p4[1] == p1[1] - 2) or
                           (p2[0] == p1[0] + 1 and p2[1] == p1[1] and p3[0] == p1[0] + 1 and p3[1] == p1[1] - 1
                            and p4[0] == p1[0] + 2 and p4[1] == p1[1] - 1) or
                           (p2[0] == p1[0] and p2[1] == p1[1] + 1 and p3[0] == p1[0] + 1 and p3[1] == p1[1] + 1
                            and p4[0] == p1[0] + 1 and p4[1] == p1[1] + 2)

    ,
    ('Vr11', 'Vr12', 'Vr13', 'Vr14'))

# piece Vr2
problem.addConstraint(
    lambda p1, p2, p3, p4: (p2[0] == p1[0] + 1 and p2[1] == p1[1] and p3[0] == p1[0] + 2 and p3[1] == p1[1]
                            and p4[0] == p1[0] and p4[1] == p1[1] + 1) or
                           (p2[0] == p1[0] and p2[1] == p1[1] + 1 and p3[0] == p1[0] and p3[1] == p1[1] + 2
                            and p4[0] == p1[0] - 1 and p4[1] == p1[1]) or
                           (p2[0] == p1[0] - 1 and p2[1] == p1[1] and p3[0] == p1[0] - 2 and p3[1] == p1[1]
                            and p4[0] == p1[0] and p4[1] == p1[1] - 1) or
                           (p2[0] == p1[0] and p2[1] == p1[1] - 1 and p3[0] == p1[0] and p3[1] == p1[1] - 2
                            and p4[0] == p1[0] + 1 and p4[1] == p1[1]) or
                           (p2[0] == p1[0] - 1 and p2[1] == p1[1] and p3[0] == p1[0] - 2 and p3[1] == p1[1]
                            and p4[0] == p1[0] and p4[1] == p1[1] + 1) or
                           (p2[0] == p1[0] and p2[1] == p1[1] - 1 and p3[0] == p1[0] and p3[1] == p1[1] - 2
                            and p4[0] == p1[0] - 1 and p4[1] == p1[1]) or
                           (p2[0] == p1[0] + 1 and p2[1] == p1[1] and p3[0] == p1[0] + 2 and p3[1] == p1[1]
                            and p4[0] == p1[0] and p4[1] == p1[1] - 1) or
                           (p2[0] == p1[0] and p2[1] == p1[1] + 1 and p3[0] == p1[0] and p3[1] == p1[1] + 2
                            and p4[0] == p1[0] + 1 and p4[1] == p1[1])
    ,
    ('Vr21', 'Vr22', 'Vr23', 'Vr24'))
#piece Red peg
problem.addConstraint(lambda p1, p2 ,p3 ,p4 :      (p1==(0,0)) or 
                                                   (p1==p2) or 
                                                   (p1==p3) or
                                                   (p1==p4) 
                      ,
                                   ['Vpr', 'Vr12', 'Vr21', 'Vr23'])

#piece Green peg1
problem.addConstraint(lambda p1, p2 ,p3 ,p4,p5 :   (p1==(0,0))or
                                                   (p1==p2) or 
                                                   (p1==p3) or
                                                   (p1==p4) or
                                                   (p1==p5)
                      ,
                                   ['Vpg1', 'Vg13', 'Vg14', 'Vg22','Vg23'])



#piece Green peg2
problem.addConstraint(lambda p1, p2 ,p3 ,p4,p5 :   (p1==(0,0)) or 
                                                   (p1==p2) or
                                                   (p1==p3) or
                                                   (p1==p4) or
                                                   (p1==p5) 
                      ,
                                   ['Vpg2', 'Vg13', 'Vg14', 'Vg22','Vg23'])

#piece yellow peg1
problem.addConstraint(lambda p1,p2,p3,p4,p5:   (p1==(0,0))or
                                               (p1==p2) or 
                                               (p1==p3) or
                                               (p1==p4) or
                                               (p1==p5)
                      ,
                                  ('Vpy1', 'Vy11', 'Vy21', 'Vy22','Vy24'))
#piece yellow peg2
problem.addConstraint(lambda p1,p2,p3,p4,p5:   (p1==(0,0))or
                                               (p1==p2) or 
                                               (p1==p3) or
                                               (p1==p4) or
                                               (p1==p5) 
                                                   
                      ,
                                   ['Vpy2', 'Vy11', 'Vy21', 'Vy22','Vy24'])

#piece blue peg1
problem.addConstraint(lambda p1,p2,p3,p4 :      (p1==(0,0)) or
                                                (p1==p2) or 
                                                (p1==p3) or
                                                (p1==p4) 
                      ,
                                   ['Vpb1', 'Vb13', 'Vb15', 'Vb23'])
#piece Blue peg2
problem.addConstraint(lambda p1,p2,p3,p4 :      (p1==(0,0)) or
                                                (p1==p2) or 
                                                (p1==p3) or
                                                (p1==p4) 
                                                 
                      ,
                                   ['Vpb2', 'Vb13', 'Vb15', 'Vb23'])


solution = problem.getSolution()
f = open('allsituation.log','a')
sys.stdout = f
endtime = datetime.datetime.now()
print(solution)
print (endtime - starttime)

