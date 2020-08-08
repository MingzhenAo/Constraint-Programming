# -*- coding: utf-8 -*-
"""
Created on Fri Aug  7 15:44:08 2020

@author: Mingzhen Ao
"""

from constraint import *

a=[
   (4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),
   (3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),
   (2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),
   (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8)]
b=[(0,0),
   (4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),
   (3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),
   (2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),
   (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8)]

from constraint import *
problem = Problem()
problem.addVariable('Vy11',a)
problem.addVariable('Vy12',a) 
problem.addVariable('Vy13',a) 
problem.addVariable('Vy21',a) 
problem.addVariable('Vy22',a) 
problem.addVariable('Vy23',a) 
problem.addVariable('Vy24',a) 
problem.addVariable('Vy25',a)
problem.addVariable('Vb11',a) 
problem.addVariable('Vb12',a) 
problem.addVariable('Vb13',a) 
problem.addVariable('Vb14',a) 
problem.addVariable('Vb15',a) 
problem.addVariable('Vb21',a) 
problem.addVariable('Vb22',a) 
problem.addVariable('Vb23',a)
problem.addVariable('Vb24',a) 
problem.addVariable('Vg11',a) 
problem.addVariable('Vg12',a) 
problem.addVariable('Vg13',a) 
problem.addVariable('Vg14',a) 
problem.addVariable('Vg21',a) 
problem.addVariable('Vg22',a) 
problem.addVariable('Vg23',a)
problem.addVariable('Vr11',a) 
problem.addVariable('Vr12',a) 
problem.addVariable('Vr13',a) 
problem.addVariable('Vr14',a) 
problem.addVariable('Vr21',a) 
problem.addVariable('Vr22',a) 
problem.addVariable('Vr23',a) 
problem.addVariable('Vr24',a)
'''
problem.addVariable('Vpy1',b)
problem.addVariable('Vpy2',b)
problem.addVariable('Vpb1',a or (0,0)) 
problem.addVariable('Vpb2',a or (0,0)) 
problem.addVariable('Vpg1',a or (0,0)) 
problem.addVariable('Vpg2',a or (0,0)) 
problem.addVariable('Vpr',a or (0,0))
'''

problem.addConstraint(AllDifferentConstraint(), ('Vy11', 'Vy12', 'Vy13',
                                                 'Vy21', 'Vy22', 'Vy23', 'Vy24', 'Vy25',
                                                 'Vb11', 'Vb12', 'Vb13', 'Vb14', 'Vb15',
                                                 'Vb21', 'Vb22', 'Vb23','Vb24',
                                                 'Vg11', 'Vg12', 'Vg13', 'Vg14',
                                                 'Vg21', 'Vg22', 'Vg23',
                                                 'Vr11', 'Vr12', 'Vr13', 'Vr14',
                                                 'Vr21', 'Vr22', 'Vr23','Vr24'))





#piece Vy1
problem.addConstraint(lambda p1, p2 ,p3:  (p2[0] == p1[0]+1 and p2[1]==p1[1] and p3[0]==p1[0]+2 and p3[1]==p1[1]) or
                                          (p2[0] == p1[0] and p2[1]==p1[1]+1 and p3[0]==p1[0] and p3[1]==p1[1]+2) or 
                                          (p2[0] == p1[0]-1 and p2[1]==p1[1] and p3[0]==p1[0]-2 and p3[1]==p1[1]) or
                                          (p2[0] == p1[0] and p2[1]==p1[1]-1 and p3[0]==p1[0] and p3[1]==p1[1]-2)
                      ,
                                   ('Vy11', 'Vy12', 'Vy13'))


#piece Vy2
problem.addConstraint(lambda p1, p2 ,p3 ,p4 ,p5:  (p2[0] == p1[0]+1 and p2[1]==p1[1] and p3[0]==p1[0]+1 and p3[1]==p1[1]+1
                                                  and p4[0]==p1[0]+2 and p4[1]==p1[1]+1 and p5[0]==p1[0]+1 and p5[1]==p1[1]+2) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]+1 and p3[0]==p1[0]-1 and p3[1]==p1[1]+1
                                                  and p4[0]==p1[0]-1 and p4[1]==p1[1]+2 and p5[0]==p1[0]-2 and p5[1]==p1[1]+1) or
                                                  (p2[0] == p1[0]-1 and p2[1]==p1[1] and p3[0]==p1[0]-1 and p3[1]==p1[1]-1
                                                  and p4[0]==p1[0]-2 and p4[1]==p1[1]-1 and p5[0]==p1[0]-1 and p5[1]==p1[1]-2) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]-1 and p3[0]==p1[0]+1 and p3[1]==p1[1]-1
                                                  and p4[0]==p1[0]+1 and p4[1]==p1[1]-2 and p5[0]==p1[0]+2 and p5[1]==p1[1]-1) or
                                                  (p2[0] == p1[0]-1 and p2[1]==p1[1] and p3[0]==p1[0]-1 and p3[1]==p1[1]+1
                                                  and p4[0]==p1[0]-2 and p4[1]==p1[1]+1 and p5[0]==p1[0]-1 and p5[1]==p1[1]+2) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]-1 and p3[0]==p1[0]-1 and p3[1]==p1[1]-1
                                                  and p4[0]==p1[0]-1 and p4[1]==p1[1]-2 and p5[0]==p1[0]-2 and p5[1]==p1[1]-1) or
                                                  (p2[0] == p1[0]+1 and p2[1]==p1[1] and p3[0]==p1[0]+1 and p3[1]==p1[1]-1
                                                  and p4[0]==p1[0]+2 and p4[1]==p1[1]-1 and p5[0]==p1[0]+1 and p5[1]==p1[1]-2) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]+1 and p3[0]==p1[0]+1 and p3[1]==p1[1]+1
                                                  and p4[0]==p1[0]+1 and p4[1]==p1[1]+2 and p5[0]==p1[0]+2 and p5[1]==p1[1]+1) 
                      ,
                                   ('Vy21', 'Vy22','Vy23', 'Vy24', 'Vy25'))


#piece Vb1
problem.addConstraint(lambda p1, p2 ,p3 ,p4 ,p5:  (p2[0] == p1[0] and p2[1]==p1[1]+1 and p3[0]==p1[0]+1 and p3[1]==p1[1]+1
                                                  and p4[0]==p1[0] and p4[1]==p1[1]+2 and p5[0]==p1[0]+1 and p5[1]==p1[1]+2) or
                                                  (p2[0] == p1[0]-1 and p2[1]==p1[1] and p3[0]==p1[0]-1 and p3[1]==p1[1]+1
                                                  and p4[0]==p1[0]-2 and p4[1]==p1[1] and p5[0]==p1[0]-2 and p5[1]==p1[1]+1) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]-1 and p3[0]==p1[0]-1 and p3[1]==p1[1]-1
                                                  and p4[0]==p1[0] and p4[1]==p1[1]-2 and p5[0]==p1[0]-1 and p5[1]==p1[1]-2) or
                                                  (p2[0] == p1[0]+1 and p2[1]==p1[1] and p3[0]==p1[0]+1 and p3[1]==p1[1]-1
                                                  and p4[0]==p1[0]+2 and p4[1]==p1[1] and p5[0]==p1[0]+2 and p5[1]==p1[1]-1) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]+1 and p3[0]==p1[0]-1 and p3[1]==p1[1]+1
                                                  and p4[0]==p1[0] and p4[1]==p1[1]+2 and p5[0]==p1[0]-1 and p5[1]==p1[1]+2) or
                                                  (p2[0] == p1[0]-1 and p2[1]==p1[1] and p3[0]==p1[0]-1 and p3[1]==p1[1]-1
                                                  and p4[0]==p1[0]-2 and p4[1]==p1[1] and p5[0]==p1[0]-2 and p5[1]==p1[1]-1) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]-1 and p3[0]==p1[0]+1 and p3[1]==p1[1]-1
                                                  and p4[0]==p1[0] and p4[1]==p1[1]-2 and p5[0]==p1[0]+1 and p5[1]==p1[1]-2) or
                                                  (p2[0] == p1[0]+1 and p2[1]==p1[1] and p3[0]==p1[0]+1 and p3[1]==p1[1]+1
                                                  and p4[0]==p1[0]+2 and p4[1]==p1[1] and p5[0]==p1[0]+2 and p5[1]==p1[1]+1) 
                      ,
                                   ('Vb11', 'Vb12', 'Vb13', 'Vb14', 'Vb15'))


#piece Vb2
problem.addConstraint(lambda p1, p2 ,p3 ,p4:  (p2[0] == p1[0]+1 and p2[1]==p1[1] and p3[0]==p1[0]+2 and p3[1]==p1[1]
                                                  and p4[0]==p1[0]+3 and p4[1]==p1[1] ) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]+1 and p3[0]==p1[0] and p3[1]==p1[1]+2
                                                  and p4[0]==p1[0] and p4[1]==p1[1]+3 ) or
                                                  (p2[0] == p1[0]-1 and p2[1]==p1[1] and p3[0]==p1[0]-2 and p3[1]==p1[1]
                                                  and p4[0]==p1[0]-3 and p4[1]==p1[1] ) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]-1 and p3[0]==p1[0] and p3[1]==p1[1]-2
                                                  and p4[0]==p1[0] and p4[1]==p1[1]-3 )
                                                
                      ,
                                   ('Vb21', 'Vb22', 'Vb23', 'Vb24'))

#piece Vg1
problem.addConstraint(lambda p1, p2 ,p3 ,p4 :  (p2[0] == p1[0]+1 and p2[1]==p1[1] and p3[0]==p1[0]+2 and p3[1]==p1[1]
                                                  and p4[0]==p1[0]+1 and p4[1]==p1[1]+1 ) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]+1 and p3[0]==p1[0] and p3[1]==p1[1]+2
                                                  and p4[0]==p1[0]-1 and p4[1]==p1[1]+1 ) or
                                                  (p2[0] == p1[0]-1 and p2[1]==p1[1] and p3[0]==p1[0]-2 and p3[1]==p1[1]
                                                  and p4[0]==p1[0]-1 and p4[1]==p1[1]-1 ) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]-1 and p3[0]==p1[0] and p3[1]==p1[1]-2
                                                  and p4[0]==p1[0]+1 and p4[1]==p1[1]-1 ) or
                                                  (p2[0] == p1[0]-1 and p2[1]==p1[1] and p3[0]==p1[0]-2 and p3[1]==p1[1]
                                                  and p4[0]==p1[0]-1 and p4[1]==p1[1]-1 ) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]-1 and p3[0]==p1[0] and p3[1]==p1[1]-2
                                                  and p4[0]==p1[0]-1 and p4[1]==p1[1]-1 ) or
                                                  (p2[0] == p1[0]+1 and p2[1]==p1[1] and p3[0]==p1[0]+2 and p3[1]==p1[1]
                                                  and p4[0]==p1[0]+1 and p4[1]==p1[1]-1 ) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]+1 and p3[0]==p1[0] and p3[1]==p1[1]+2
                                                  and p4[0]==p1[0]+1 and p4[1]==p1[1]+1 ) 
                                                
                      ,
                                   ('Vg11', 'Vg12', 'Vg13', 'Vg14'))

#piece Vg2
problem.addConstraint(lambda p1, p2 ,p3:  (p2[0] == p1[0]+1 and p2[1]==p1[1] and p3[0]==p1[0]+1 and p3[1]==p1[1]+1) or
                                          (p2[0] == p1[0] and p2[1]==p1[1]+1 and p3[0]==p1[0]-1 and p3[1]==p1[1]+1) or 
                                          (p2[0] == p1[0]-1 and p2[1]==p1[1] and p3[0]==p1[0]-1 and p3[1]==p1[1]-1) or
                                          (p2[0] == p1[0] and p2[1]==p1[1]-1 and p3[0]==p1[0]+1 and p3[1]==p1[1]-1) or
                                          (p2[0] == p1[0]-1 and p2[1]==p1[1] and p3[0]==p1[0]-1 and p3[1]==p1[1]+1) or
                                          (p2[0] == p1[0] and p2[1]==p1[1]-1 and p3[0]==p1[0]-1 and p3[1]==p1[1]-1) or
                                          (p2[0] == p1[0]+1 and p2[1]==p1[1] and p3[0]==p1[0]+1 and p3[1]==p1[1]-1) or
                                          (p2[0] == p1[0] and p2[1]==p1[1]+1 and p3[0]==p1[0]+1 and p3[1]==p1[1]+1) 
                      ,
                                   ('Vg21', 'Vg22', 'Vg23'))

#piece Vr1
problem.addConstraint(lambda p1, p2 ,p3 ,p4 :  (p2[0] == p1[0]+1 and p2[1]==p1[1] and p3[0]==p1[0]+1 and p3[1]==p1[1]+1
                                                  and p4[0]==p1[0]+2 and p4[1]==p1[1]+1 ) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]+1 and p3[0]==p1[0]-1 and p3[1]==p1[1]+1
                                                  and p4[0]==p1[0]-1 and p4[1]==p1[1]+2 ) or
                                                  (p2[0] == p1[0]-1 and p2[1]==p1[1] and p3[0]==p1[0]-1 and p3[1]==p1[1]-1
                                                  and p4[0]==p1[0]-2 and p4[1]==p1[1]-1 ) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]-1 and p3[0]==p1[0]+1 and p3[1]==p1[1]-1
                                                  and p4[0]==p1[0]+1 and p4[1]==p1[1]-2 ) or
                                                  (p2[0] == p1[0]-1 and p2[1]==p1[1] and p3[0]==p1[0]-1 and p3[1]==p1[1]+1
                                                  and p4[0]==p1[0]-2 and p4[1]==p1[1]+1 ) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]-1 and p3[0]==p1[0]-1 and p3[1]==p1[1]-1
                                                  and p4[0]==p1[0]-1 and p4[1]==p1[1]-2 ) or
                                                  (p2[0] == p1[0]+1 and p2[1]==p1[1] and p3[0]==p1[0]+1 and p3[1]==p1[1]-1
                                                  and p4[0]==p1[0]+2 and p4[1]==p1[1]-1 ) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]+1 and p3[0]==p1[0]+1 and p3[1]==p1[1]+1
                                                  and p4[0]==p1[0]+1 and p4[1]==p1[1]+2 ) 
                                                
                      ,
                                   ('Vr11', 'Vr12', 'Vr13', 'Vr14'))

#piece Vr2
problem.addConstraint(lambda p1, p2 ,p3 ,p4 :  (p2[0] == p1[0]+1 and p2[1]==p1[1] and p3[0]==p1[0]+2 and p3[1]==p1[1]
                                                  and p4[0]==p1[0] and p4[1]==p1[1]+1 ) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]+1 and p3[0]==p1[0] and p3[1]==p1[1]+2
                                                  and p4[0]==p1[0]-1 and p4[1]==p1[1] ) or
                                                  (p2[0] == p1[0]-1 and p2[1]==p1[1] and p3[0]==p1[0]-2 and p3[1]==p1[1]
                                                  and p4[0]==p1[0] and p4[1]==p1[1]-1 ) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]-1 and p3[0]==p1[0] and p3[1]==p1[1]-2
                                                  and p4[0]==p1[0]+1 and p4[1]==p1[1] ) or
                                                  (p2[0] == p1[0]-1 and p2[1]==p1[1] and p3[0]==p1[0]-2 and p3[1]==p1[1]
                                                  and p4[0]==p1[0] and p4[1]==p1[1]+1 ) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]-1 and p3[0]==p1[0] and p3[1]==p1[1]-2
                                                  and p4[0]==p1[0]-1 and p4[1]==p1[1] ) or
                                                  (p2[0] == p1[0]+1 and p2[1]==p1[1] and p3[0]==p1[0]+2 and p3[1]==p1[1]
                                                  and p4[0]==p1[0] and p4[1]==p1[1]-1 ) or
                                                  (p2[0] == p1[0] and p2[1]==p1[1]+1 and p3[0]==p1[0] and p3[1]==p1[1]+2
                                                  and p4[0]==p1[0]+1 and p4[1]==p1[1] ) 
                                                
                      ,
                                   ('Vr21', 'Vr22', 'Vr23', 'Vr24'))
'''
#piece yellow peg1


problem.addConstraint(lambda p1, p2 ,p3 ,p4,p5 :   (p1==p2) or 
                                                   (p1==p3) or
                                                   (p1==p4) or
                                                   (p1==p5) or
                                                   (p1==(0,0))
                      ,
                                  ('Vpy1', 'Vy11', 'Vy21', 'Vy22','Vy24'))

#piece yellow peg2
problem.addConstraint(lambda p1, p2 ,p3 ,p4,p5 :   (p1[0]==p2[0] and p1[1]==p2[1]) or 
                                                   (p1[0]==p3[0] and p1[1]==p3[1]) or
                                                   (p1[0]==p4[0] and p1[1]==p4[1]) or
                                                   (p1[0]==p5[0] and p1[1]==p5[1]) or
                                                   (p1[0]==0 and p1[1]==0) 
                      ,
                                   ['Vpy2', 'Vy11', 'Vy21', 'Vy22','Vy24'])

#piece Blue peg1
problem.addConstraint(lambda p1, p2 ,p3 ,p4 :   (p1[0]==p2[0] and p1[1]==p2[1]) or 
                                                (p1[0]==p3[0] and p1[1]==p3[1]) or
                                                (p1[0]==p4[0] and p1[1]==p4[1]) or
                                                (p1[0]==0 and p1[1]==0) 
                      ,
                                   ['Vpb1', 'Vb13', 'Vb15', 'Vb23'])
#piece Blue peg2
problem.addConstraint(lambda p1, p2 ,p3 ,p4 :   (p1[0]==p2[0] and p1[1]==p2[1]) or 
                                                (p1[0]==p3[0] and p1[1]==p3[1]) or
                                                (p1[0]==p4[0] and p1[1]==p4[1]) or
                                                (p1[0]==0 and p1[1]==0) 
                      ,
                                   ['Vpb2', 'Vb13', 'Vb15', 'Vb23'])
#piece Green peg1
problem.addConstraint(lambda p1, p2 ,p3 ,p4,p5 :   (p1[0]==p2[0] and p1[1]==p2[1]) or 
                                                   (p1[0]==p3[0] and p1[1]==p3[1]) or
                                                   (p1[0]==p4[0] and p1[1]==p4[1]) or
                                                   (p1[0]==p5[0] and p1[1]==p5[1]) or
                                                   (p1[0]==0 and p1[1]==0) 
                      ,
                                   ['Vpg1', 'Vg13', 'Vg14', 'Vg22','Vg23'])

#piece Green peg2
problem.addConstraint(lambda p1, p2 ,p3 ,p4,p5 :   (p1[0]==p2[0] and p1[1]==p2[1]) or 
                                                   (p1[0]==p3[0] and p1[1]==p3[1]) or
                                                   (p1[0]==p4[0] and p1[1]==p4[1]) or
                                                   (p1[0]==p5[0] and p1[1]==p5[1]) or
                                                   (p1[0]==0 and p1[1]==0) 
                      ,
                                   ['Vpg2', 'Vg13', 'Vg14', 'Vg22','Vg23'])

#piece Red peg
#piece Blue peg2
problem.addConstraint(lambda p1, p2 ,p3 ,p4 :   (p1[0]==p2[0],p1[1]==p2[1]) or 
                                                (p1[0]==p3[0],p3[1]==p3[1]) or
                                                (p1[0]==p4[0],p1[1]==p4[1]) or
                                                (p1[0]==0,p1[1]==0) 
                      ,
                                   ['Vpr', 'Vr12', 'Vr21', 'Vr23'])
'''

solution = problem.getSolution()