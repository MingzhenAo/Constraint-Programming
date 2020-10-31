% Use this editor as a MiniZinc scratch book
include "alldifferent.mzn";
function var int:g2(var int:a)=a mod 10;
function var int:g1(var int:a)=(a div 10) mod 10;
function var int:g0(var int:a)=a div 100;
set of int: position={
511,
411,412,421,
311,312,313,321,322,331,
211,212,213,214,221,222,223,231,232,241,
111,112,113,114,115,121,122,123,124,131,132,133,141,142,151};

var position: Vy1;var position: Vy2;var position: Vy3;var position: Vy4;
var position: Vb11;var position: Vb12;var position: Vb13;var position: Vb14;var position: Vb15;
var position: Vb21;var position: Vb22;var position: Vb23;var position: Vb24;var position: Vb25;
var position: Vg11;var position: Vg12;var position: Vg13;var position: Vg14;
var position: Vg21;var position: Vg22;var position: Vg23;
var position: Vr11;var position: Vr12;var position: Vr13;
var position: Vr21;var position: Vr22;var position: Vr23;
var position: Vo1;var position: Vo2;var position: Vo3;var position: Vo4;
var position: Vp1;var position: Vp2;var position: Vp3;var position: Vp4;

%all the Vunits are different
constraint alldifferent([Vy1,Vy2,Vy3,Vy4,Vb11,Vb12,Vb13,Vb14,Vb15,Vb21,Vb22,Vb23,Vb24,Vb25,Vg11,Vg12,Vg13,Vg14,
Vg21,Vg22,Vg23,Vr11,Vr12,Vr13,Vr21,Vr22,Vr23,Vo1,Vo2,Vo3,Vo4,Vp1,Vp2,Vp3,Vp4]);




constraint Vy1 = 113;
constraint Vy2 = 114;
constraint Vy3 = 115;
constraint Vy4 = 124;

%Vb1
constraint ( 
(g0(Vb12)=g0(Vb11)/\ g1(Vb12)=g1(Vb11)+1/\ g2(Vb12)=g2(Vb11)/\ g0(Vb13)=g0(Vb11)/\ g1(Vb13)=g1(Vb11)+1/\ g2(Vb13)=g2(Vb11)-1/\ g0(Vb14)=g0(Vb11)-1/\ g1(Vb14)=g1(Vb11)/\ g2(Vb14)=g2(Vb11)/\ g0(Vb15)=g0(Vb11)+1/\ g1(Vb15)=g1(Vb11)+1/\ g2(Vb15)=g2(Vb11))\/ 

(g0(Vb12)=g0(Vb11)/\ g1(Vb12)=g1(Vb11)+1/\ g2(Vb12)=g2(Vb11)/\ g0(Vb13)=g0(Vb11)/\ g1(Vb13)=g1(Vb11)+1/\ g2(Vb13)=g2(Vb11)+1/\ g0(Vb14)=g0(Vb11)+1/\ g1(Vb14)=g1(Vb11)/\ g2(Vb14)=g2(Vb11)/\ g0(Vb15)=g0(Vb11)-1/\ g1(Vb15)=g1(Vb11)+1/\ g2(Vb15)=g2(Vb11))\/ 

(g0(Vb12)=g0(Vb11)/\ g1(Vb12)=g1(Vb11)/\ g2(Vb12)=g2(Vb11)-1/\ g0(Vb13)=g0(Vb11)-1/\ g1(Vb13)=g1(Vb11)/\ g2(Vb13)=g2(Vb11)-1/\ g0(Vb14)=g0(Vb11)/\ g1(Vb14)=g1(Vb11)+1/\ g2(Vb14)=g2(Vb11)/\ g0(Vb15)=g0(Vb11)/\ g1(Vb15)=g1(Vb11)-1/\ g2(Vb15)=g2(Vb11)-1)\/ 

(g0(Vb12)=g0(Vb11)-1/\ g1(Vb12)=g1(Vb11)/\ g2(Vb12)=g2(Vb11)/\ g0(Vb13)=g0(Vb11)-1/\ g1(Vb13)=g1(Vb11)+1/\ g2(Vb13)=g2(Vb11)/\ g0(Vb14)=g0(Vb11)/\ g1(Vb14)=g1(Vb11)/\ g2(Vb14)=g2(Vb11)-1/\ g0(Vb15)=g0(Vb11)-1/\ g1(Vb15)=g1(Vb11)/\ g2(Vb15)=g2(Vb11)+1)\/ 

(g0(Vb12)=g0(Vb11)-1/\ g1(Vb12)=g1(Vb11)/\ g2(Vb12)=g2(Vb11)/\ g0(Vb13)=g0(Vb11)-1/\ g1(Vb13)=g1(Vb11)-1/\ g2(Vb13)=g2(Vb11)/\ g0(Vb14)=g0(Vb11)/\ g1(Vb14)=g1(Vb11)/\ g2(Vb14)=g2(Vb11)+1/\ g0(Vb15)=g0(Vb11)-1/\ g1(Vb15)=g1(Vb11)/\ g2(Vb15)=g2(Vb11)-1)\/ 

(g0(Vb12)=g0(Vb11)+1/\ g1(Vb12)=g1(Vb11)/\ g2(Vb12)=g2(Vb11)/\ g0(Vb13)=g0(Vb11)+1/\ g1(Vb13)=g1(Vb11)-1/\ g2(Vb13)=g2(Vb11)/\ g0(Vb14)=g0(Vb11)/\ g1(Vb14)=g1(Vb11)/\ g2(Vb14)=g2(Vb11)-1/\ g0(Vb15)=g0(Vb11)+1/\ g1(Vb15)=g1(Vb11)/\ g2(Vb15)=g2(Vb11)+1)\/ 

(g0(Vb12)=g0(Vb11)/\ g1(Vb12)=g1(Vb11)-1/\ g2(Vb12)=g2(Vb11)/\ g0(Vb13)=g0(Vb11)/\ g1(Vb13)=g1(Vb11)-1/\ g2(Vb13)=g2(Vb11)-1/\ g0(Vb14)=g0(Vb11)+1/\ g1(Vb14)=g1(Vb11)/\ g2(Vb14)=g2(Vb11)/\ g0(Vb15)=g0(Vb11)-1/\ g1(Vb15)=g1(Vb11)-1/\ g2(Vb15)=g2(Vb11))\/ 

(g0(Vb12)=g0(Vb11)/\ g1(Vb12)=g1(Vb11)-1/\ g2(Vb12)=g2(Vb11)/\ g0(Vb13)=g0(Vb11)/\ g1(Vb13)=g1(Vb11)-1/\ g2(Vb13)=g2(Vb11)+1/\ g0(Vb14)=g0(Vb11)-1/\ g1(Vb14)=g1(Vb11)/\ g2(Vb14)=g2(Vb11)/\ g0(Vb15)=g0(Vb11)+1/\ g1(Vb15)=g1(Vb11)-1/\ g2(Vb15)=g2(Vb11))\/ 

(g0(Vb12)=g0(Vb11)/\ g1(Vb12)=g1(Vb11)+1/\ g2(Vb12)=g2(Vb11)/\ g0(Vb13)=g0(Vb11)+1/\ g1(Vb13)=g1(Vb11)+1/\ g2(Vb13)=g2(Vb11)/\ g0(Vb14)=g0(Vb11)/\ g1(Vb14)=g1(Vb11)/\ g2(Vb14)=g2(Vb11)-1/\ g0(Vb15)=g0(Vb11)/\ g1(Vb15)=g1(Vb11)+1/\ g2(Vb15)=g2(Vb11)+1)\/ 

(g0(Vb12)=g0(Vb11)/\ g1(Vb12)=g1(Vb11)/\ g2(Vb12)=g2(Vb11)+1/\ g0(Vb13)=g0(Vb11)/\ g1(Vb13)=g1(Vb11)-1/\ g2(Vb13)=g2(Vb11)+1/\ g0(Vb14)=g0(Vb11)+1/\ g1(Vb14)=g1(Vb11)/\ g2(Vb14)=g2(Vb11)/\ g0(Vb15)=g0(Vb11)-1/\ g1(Vb15)=g1(Vb11)/\ g2(Vb15)=g2(Vb11)+1)\/ 

(g0(Vb12)=g0(Vb11)/\ g1(Vb12)=g1(Vb11)/\ g2(Vb12)=g2(Vb11)+1/\ g0(Vb13)=g0(Vb11)+1/\ g1(Vb13)=g1(Vb11)/\ g2(Vb13)=g2(Vb11)+1/\ g0(Vb14)=g0(Vb11)/\ g1(Vb14)=g1(Vb11)+1/\ g2(Vb14)=g2(Vb11)/\ g0(Vb15)=g0(Vb11)/\ g1(Vb15)=g1(Vb11)-1/\ g2(Vb15)=g2(Vb11)+1)\/ 

(g0(Vb12)=g0(Vb11)/\ g1(Vb12)=g1(Vb11)/\ g2(Vb12)=g2(Vb11)-1/\ g0(Vb13)=g0(Vb11)/\ g1(Vb13)=g1(Vb11)+1/\ g2(Vb13)=g2(Vb11)-1/\ g0(Vb14)=g0(Vb11)+1/\ g1(Vb14)=g1(Vb11)/\ g2(Vb14)=g2(Vb11)/\ g0(Vb15)=g0(Vb11)-1/\ g1(Vb15)=g1(Vb11)/\ g2(Vb15)=g2(Vb11)-1)\/ 

(g0(Vb12)=g0(Vb11)/\ g1(Vb12)=g1(Vb11)-1/\ g2(Vb12)=g2(Vb11)/\ g0(Vb13)=g0(Vb11)-1/\ g1(Vb13)=g1(Vb11)-1/\ g2(Vb13)=g2(Vb11)/\ g0(Vb14)=g0(Vb11)/\ g1(Vb14)=g1(Vb11)/\ g2(Vb14)=g2(Vb11)-1/\ g0(Vb15)=g0(Vb11)/\ g1(Vb15)=g1(Vb11)-1/\ g2(Vb15)=g2(Vb11)+1)\/ 

(g0(Vb12)=g0(Vb11)+1/\ g1(Vb12)=g1(Vb11)/\ g2(Vb12)=g2(Vb11)/\ g0(Vb13)=g0(Vb11)+1/\ g1(Vb13)=g1(Vb11)/\ g2(Vb13)=g2(Vb11)-1/\ g0(Vb14)=g0(Vb11)/\ g1(Vb14)=g1(Vb11)+1/\ g2(Vb14)=g2(Vb11)/\ g0(Vb15)=g0(Vb11)+1/\ g1(Vb15)=g1(Vb11)-1/\ g2(Vb15)=g2(Vb11))\/ 

(g0(Vb12)=g0(Vb11)+1/\ g1(Vb12)=g1(Vb11)/\ g2(Vb12)=g2(Vb11)/\ g0(Vb13)=g0(Vb11)+1/\ g1(Vb13)=g1(Vb11)+1/\ g2(Vb13)=g2(Vb11)/\ g0(Vb14)=g0(Vb11)/\ g1(Vb14)=g1(Vb11)/\ g2(Vb14)=g2(Vb11)+1/\ g0(Vb15)=g0(Vb11)+1/\ g1(Vb15)=g1(Vb11)/\ g2(Vb15)=g2(Vb11)-1)\/ 

(g0(Vb12)=g0(Vb11)/\ g1(Vb12)=g1(Vb11)/\ g2(Vb12)=g2(Vb11)-1/\ g0(Vb13)=g0(Vb11)/\ g1(Vb13)=g1(Vb11)-1/\ g2(Vb13)=g2(Vb11)-1/\ g0(Vb14)=g0(Vb11)-1/\ g1(Vb14)=g1(Vb11)/\ g2(Vb14)=g2(Vb11)/\ g0(Vb15)=g0(Vb11)+1/\ g1(Vb15)=g1(Vb11)/\ g2(Vb15)=g2(Vb11)-1)\/ 

(g0(Vb12)=g0(Vb11)/\ g1(Vb12)=g1(Vb11)/\ g2(Vb12)=g2(Vb11)+1/\ g0(Vb13)=g0(Vb11)/\ g1(Vb13)=g1(Vb11)+1/\ g2(Vb13)=g2(Vb11)+1/\ g0(Vb14)=g0(Vb11)-1/\ g1(Vb14)=g1(Vb11)/\ g2(Vb14)=g2(Vb11)/\ g0(Vb15)=g0(Vb11)+1/\ g1(Vb15)=g1(Vb11)/\ g2(Vb15)=g2(Vb11)+1)\/ 

(g0(Vb12)=g0(Vb11)/\ g1(Vb12)=g1(Vb11)/\ g2(Vb12)=g2(Vb11)-1/\ g0(Vb13)=g0(Vb11)+1/\ g1(Vb13)=g1(Vb11)/\ g2(Vb13)=g2(Vb11)-1/\ g0(Vb14)=g0(Vb11)/\ g1(Vb14)=g1(Vb11)-1/\ g2(Vb14)=g2(Vb11)/\ g0(Vb15)=g0(Vb11)/\ g1(Vb15)=g1(Vb11)+1/\ g2(Vb15)=g2(Vb11)-1)\/ 

(g0(Vb12)=g0(Vb11)/\ g1(Vb12)=g1(Vb11)-1/\ g2(Vb12)=g2(Vb11)/\ g0(Vb13)=g0(Vb11)+1/\ g1(Vb13)=g1(Vb11)-1/\ g2(Vb13)=g2(Vb11)/\ g0(Vb14)=g0(Vb11)/\ g1(Vb14)=g1(Vb11)/\ g2(Vb14)=g2(Vb11)+1/\ g0(Vb15)=g0(Vb11)/\ g1(Vb15)=g1(Vb11)-1/\ g2(Vb15)=g2(Vb11)-1)\/ 

(g0(Vb12)=g0(Vb11)/\ g1(Vb12)=g1(Vb11)+1/\ g2(Vb12)=g2(Vb11)/\ g0(Vb13)=g0(Vb11)-1/\ g1(Vb13)=g1(Vb11)+1/\ g2(Vb13)=g2(Vb11)/\ g0(Vb14)=g0(Vb11)/\ g1(Vb14)=g1(Vb11)/\ g2(Vb14)=g2(Vb11)+1/\ g0(Vb15)=g0(Vb11)/\ g1(Vb15)=g1(Vb11)+1/\ g2(Vb15)=g2(Vb11)-1)\/ 

(g0(Vb12)=g0(Vb11)+1/\ g1(Vb12)=g1(Vb11)/\ g2(Vb12)=g2(Vb11)/\ g0(Vb13)=g0(Vb11)+1/\ g1(Vb13)=g1(Vb11)/\ g2(Vb13)=g2(Vb11)+1/\ g0(Vb14)=g0(Vb11)/\ g1(Vb14)=g1(Vb11)-1/\ g2(Vb14)=g2(Vb11)/\ g0(Vb15)=g0(Vb11)+1/\ g1(Vb15)=g1(Vb11)+1/\ g2(Vb15)=g2(Vb11))\/ 

(g0(Vb12)=g0(Vb11)-1/\ g1(Vb12)=g1(Vb11)/\ g2(Vb12)=g2(Vb11)/\ g0(Vb13)=g0(Vb11)-1/\ g1(Vb13)=g1(Vb11)/\ g2(Vb13)=g2(Vb11)+1/\ g0(Vb14)=g0(Vb11)/\ g1(Vb14)=g1(Vb11)+1/\ g2(Vb14)=g2(Vb11)/\ g0(Vb15)=g0(Vb11)-1/\ g1(Vb15)=g1(Vb11)-1/\ g2(Vb15)=g2(Vb11))\/ 

(g0(Vb12)=g0(Vb11)/\ g1(Vb12)=g1(Vb11)/\ g2(Vb12)=g2(Vb11)+1/\ g0(Vb13)=g0(Vb11)-1/\ g1(Vb13)=g1(Vb11)/\ g2(Vb13)=g2(Vb11)+1/\ g0(Vb14)=g0(Vb11)/\ g1(Vb14)=g1(Vb11)-1/\ g2(Vb14)=g2(Vb11)/\ g0(Vb15)=g0(Vb11)/\ g1(Vb15)=g1(Vb11)+1/\ g2(Vb15)=g2(Vb11)+1)\/ 

(g0(Vb12)=g0(Vb11)-1/\ g1(Vb12)=g1(Vb11)/\ g2(Vb12)=g2(Vb11)/\ g0(Vb13)=g0(Vb11)-1/\ g1(Vb13)=g1(Vb11)/\ g2(Vb13)=g2(Vb11)-1/\ g0(Vb14)=g0(Vb11)/\ g1(Vb14)=g1(Vb11)-1/\ g2(Vb14)=g2(Vb11)/\ g0(Vb15)=g0(Vb11)-1/\ g1(Vb15)=g1(Vb11)+1/\ g2(Vb15)=g2(Vb11)));

constraint Vb21 = 231;
constraint Vb22 = 331;
constraint Vb23 = 321;
constraint Vb24 = 322;
constraint Vb25 = 241;

%Vg1
constraint (
(g0(Vg12)=g0(Vg11)+1/\ g1(Vg12)=g1(Vg11)/\ g2(Vg12)=g2(Vg11)/\ g0(Vg13)=g0(Vg11)+1/\ g1(Vg13)=g1(Vg11)-1/\ g2(Vg13)=g2(Vg11)/\ g0(Vg14)=g0(Vg11)+2/\ g1(Vg14)=g1(Vg11)-1/\ g2(Vg14)=g2(Vg11))\/ 

(g0(Vg12)=g0(Vg11)/\ g1(Vg12)=g1(Vg11)-1/\ g2(Vg12)=g2(Vg11)/\ g0(Vg13)=g0(Vg11)/\ g1(Vg13)=g1(Vg11)-1/\ g2(Vg13)=g2(Vg11)-1/\ g0(Vg14)=g0(Vg11)/\ g1(Vg14)=g1(Vg11)-2/\ g2(Vg14)=g2(Vg11)-1)\/ 

(g0(Vg12)=g0(Vg11)/\ g1(Vg12)=g1(Vg11)/\ g2(Vg12)=g2(Vg11)-1/\ g0(Vg13)=g0(Vg11)/\ g1(Vg13)=g1(Vg11)-1/\ g2(Vg13)=g2(Vg11)-1/\ g0(Vg14)=g0(Vg11)/\ g1(Vg14)=g1(Vg11)-1/\ g2(Vg14)=g2(Vg11)-2)\/ 

(g0(Vg12)=g0(Vg11)/\ g1(Vg12)=g1(Vg11)/\ g2(Vg12)=g2(Vg11)-1/\ g0(Vg13)=g0(Vg11)/\ g1(Vg13)=g1(Vg11)+1/\ g2(Vg13)=g2(Vg11)-1/\ g0(Vg14)=g0(Vg11)/\ g1(Vg14)=g1(Vg11)+1/\ g2(Vg14)=g2(Vg11)-2)\/ 

(g0(Vg12)=g0(Vg11)/\ g1(Vg12)=g1(Vg11)+1/\ g2(Vg12)=g2(Vg11)/\ g0(Vg13)=g0(Vg11)+1/\ g1(Vg13)=g1(Vg11)+1/\ g2(Vg13)=g2(Vg11)/\ g0(Vg14)=g0(Vg11)+1/\ g1(Vg14)=g1(Vg11)+2/\ g2(Vg14)=g2(Vg11))\/ 

(g0(Vg12)=g0(Vg11)/\ g1(Vg12)=g1(Vg11)/\ g2(Vg12)=g2(Vg11)+1/\ g0(Vg13)=g0(Vg11)+1/\ g1(Vg13)=g1(Vg11)/\ g2(Vg13)=g2(Vg11)+1/\ g0(Vg14)=g0(Vg11)+1/\ g1(Vg14)=g1(Vg11)/\ g2(Vg14)=g2(Vg11)+2)\/ 

(g0(Vg12)=g0(Vg11)/\ g1(Vg12)=g1(Vg11)-1/\ g2(Vg12)=g2(Vg11)/\ g0(Vg13)=g0(Vg11)/\ g1(Vg13)=g1(Vg11)-1/\ g2(Vg13)=g2(Vg11)+1/\ g0(Vg14)=g0(Vg11)/\ g1(Vg14)=g1(Vg11)-2/\ g2(Vg14)=g2(Vg11)+1)\/ 

(g0(Vg12)=g0(Vg11)/\ g1(Vg12)=g1(Vg11)/\ g2(Vg12)=g2(Vg11)+1/\ g0(Vg13)=g0(Vg11)-1/\ g1(Vg13)=g1(Vg11)/\ g2(Vg13)=g2(Vg11)+1/\ g0(Vg14)=g0(Vg11)-1/\ g1(Vg14)=g1(Vg11)/\ g2(Vg14)=g2(Vg11)+2)\/ 

(g0(Vg12)=g0(Vg11)-1/\ g1(Vg12)=g1(Vg11)/\ g2(Vg12)=g2(Vg11)/\ g0(Vg13)=g0(Vg11)-1/\ g1(Vg13)=g1(Vg11)/\ g2(Vg13)=g2(Vg11)-1/\ g0(Vg14)=g0(Vg11)-2/\ g1(Vg14)=g1(Vg11)/\ g2(Vg14)=g2(Vg11)-1)\/ 

(g0(Vg12)=g0(Vg11)+1/\ g1(Vg12)=g1(Vg11)/\ g2(Vg12)=g2(Vg11)/\ g0(Vg13)=g0(Vg11)+1/\ g1(Vg13)=g1(Vg11)/\ g2(Vg13)=g2(Vg11)-1/\ g0(Vg14)=g0(Vg11)+2/\ g1(Vg14)=g1(Vg11)/\ g2(Vg14)=g2(Vg11)-1)\/ 

(g0(Vg12)=g0(Vg11)+1/\ g1(Vg12)=g1(Vg11)/\ g2(Vg12)=g2(Vg11)/\ g0(Vg13)=g0(Vg11)+1/\ g1(Vg13)=g1(Vg11)+1/\ g2(Vg13)=g2(Vg11)/\ g0(Vg14)=g0(Vg11)+2/\ g1(Vg14)=g1(Vg11)+1/\ g2(Vg14)=g2(Vg11))\/ 

(g0(Vg12)=g0(Vg11)-1/\ g1(Vg12)=g1(Vg11)/\ g2(Vg12)=g2(Vg11)/\ g0(Vg13)=g0(Vg11)-1/\ g1(Vg13)=g1(Vg11)-1/\ g2(Vg13)=g2(Vg11)/\ g0(Vg14)=g0(Vg11)-2/\ g1(Vg14)=g1(Vg11)-1/\ g2(Vg14)=g2(Vg11))\/ 

(g0(Vg12)=g0(Vg11)/\ g1(Vg12)=g1(Vg11)+1/\ g2(Vg12)=g2(Vg11)/\ g0(Vg13)=g0(Vg11)-1/\ g1(Vg13)=g1(Vg11)+1/\ g2(Vg13)=g2(Vg11)/\ g0(Vg14)=g0(Vg11)-1/\ g1(Vg14)=g1(Vg11)+2/\ g2(Vg14)=g2(Vg11))\/ 

(g0(Vg12)=g0(Vg11)-1/\ g1(Vg12)=g1(Vg11)/\ g2(Vg12)=g2(Vg11)/\ g0(Vg13)=g0(Vg11)-1/\ g1(Vg13)=g1(Vg11)+1/\ g2(Vg13)=g2(Vg11)/\ g0(Vg14)=g0(Vg11)-2/\ g1(Vg14)=g1(Vg11)+1/\ g2(Vg14)=g2(Vg11))\/ 

(g0(Vg12)=g0(Vg11)/\ g1(Vg12)=g1(Vg11)/\ g2(Vg12)=g2(Vg11)+1/\ g0(Vg13)=g0(Vg11)/\ g1(Vg13)=g1(Vg11)+1/\ g2(Vg13)=g2(Vg11)+1/\ g0(Vg14)=g0(Vg11)/\ g1(Vg14)=g1(Vg11)+1/\ g2(Vg14)=g2(Vg11)+2)\/ 

(g0(Vg12)=g0(Vg11)/\ g1(Vg12)=g1(Vg11)+1/\ g2(Vg12)=g2(Vg11)/\ g0(Vg13)=g0(Vg11)/\ g1(Vg13)=g1(Vg11)+1/\ g2(Vg13)=g2(Vg11)+1/\ g0(Vg14)=g0(Vg11)/\ g1(Vg14)=g1(Vg11)+2/\ g2(Vg14)=g2(Vg11)+1)\/ 

(g0(Vg12)=g0(Vg11)+1/\ g1(Vg12)=g1(Vg11)/\ g2(Vg12)=g2(Vg11)/\ g0(Vg13)=g0(Vg11)+1/\ g1(Vg13)=g1(Vg11)/\ g2(Vg13)=g2(Vg11)+1/\ g0(Vg14)=g0(Vg11)+2/\ g1(Vg14)=g1(Vg11)/\ g2(Vg14)=g2(Vg11)+1)\/ 

(g0(Vg12)=g0(Vg11)/\ g1(Vg12)=g1(Vg11)/\ g2(Vg12)=g2(Vg11)+1/\ g0(Vg13)=g0(Vg11)/\ g1(Vg13)=g1(Vg11)-1/\ g2(Vg13)=g2(Vg11)+1/\ g0(Vg14)=g0(Vg11)/\ g1(Vg14)=g1(Vg11)-1/\ g2(Vg14)=g2(Vg11)+2)\/ 

(g0(Vg12)=g0(Vg11)-1/\ g1(Vg12)=g1(Vg11)/\ g2(Vg12)=g2(Vg11)/\ g0(Vg13)=g0(Vg11)-1/\ g1(Vg13)=g1(Vg11)/\ g2(Vg13)=g2(Vg11)+1/\ g0(Vg14)=g0(Vg11)-2/\ g1(Vg14)=g1(Vg11)/\ g2(Vg14)=g2(Vg11)+1)\/ 

(g0(Vg12)=g0(Vg11)/\ g1(Vg12)=g1(Vg11)/\ g2(Vg12)=g2(Vg11)-1/\ g0(Vg13)=g0(Vg11)-1/\ g1(Vg13)=g1(Vg11)/\ g2(Vg13)=g2(Vg11)-1/\ g0(Vg14)=g0(Vg11)-1/\ g1(Vg14)=g1(Vg11)/\ g2(Vg14)=g2(Vg11)-2)\/ 

(g0(Vg12)=g0(Vg11)/\ g1(Vg12)=g1(Vg11)/\ g2(Vg12)=g2(Vg11)-1/\ g0(Vg13)=g0(Vg11)+1/\ g1(Vg13)=g1(Vg11)/\ g2(Vg13)=g2(Vg11)-1/\ g0(Vg14)=g0(Vg11)+1/\ g1(Vg14)=g1(Vg11)/\ g2(Vg14)=g2(Vg11)-2)\/ 

(g0(Vg12)=g0(Vg11)/\ g1(Vg12)=g1(Vg11)+1/\ g2(Vg12)=g2(Vg11)/\ g0(Vg13)=g0(Vg11)/\ g1(Vg13)=g1(Vg11)+1/\ g2(Vg13)=g2(Vg11)-1/\ g0(Vg14)=g0(Vg11)/\ g1(Vg14)=g1(Vg11)+2/\ g2(Vg14)=g2(Vg11)-1)\/ 

(g0(Vg12)=g0(Vg11)/\ g1(Vg12)=g1(Vg11)-1/\ g2(Vg12)=g2(Vg11)/\ g0(Vg13)=g0(Vg11)+1/\ g1(Vg13)=g1(Vg11)-1/\ g2(Vg13)=g2(Vg11)/\ g0(Vg14)=g0(Vg11)+1/\ g1(Vg14)=g1(Vg11)-2/\ g2(Vg14)=g2(Vg11))\/ 

(g0(Vg12)=g0(Vg11)/\ g1(Vg12)=g1(Vg11)-1/\ g2(Vg12)=g2(Vg11)/\ g0(Vg13)=g0(Vg11)-1/\ g1(Vg13)=g1(Vg11)-1/\ g2(Vg13)=g2(Vg11)/\ g0(Vg14)=g0(Vg11)-1/\ g1(Vg14)=g1(Vg11)-2/\ g2(Vg14)=g2(Vg11)));
%Vg2
constraint (
(g0(Vg22)=g0(Vg21)/\ g1(Vg22)=g1(Vg21)/\ g2(Vg22)=g2(Vg21)+1/\ g0(Vg23)=g0(Vg21)/\ g1(Vg23)=g1(Vg21)/\ g2(Vg23)=g2(Vg21)+2)\/ 

(g0(Vg22)=g0(Vg21)/\ g1(Vg22)=g1(Vg21)/\ g2(Vg22)=g2(Vg21)-1/\ g0(Vg23)=g0(Vg21)/\ g1(Vg23)=g1(Vg21)/\ g2(Vg23)=g2(Vg21)-2)\/ 

(g0(Vg22)=g0(Vg21)-1/\ g1(Vg22)=g1(Vg21)/\ g2(Vg22)=g2(Vg21)/\ g0(Vg23)=g0(Vg21)-2/\ g1(Vg23)=g1(Vg21)/\ g2(Vg23)=g2(Vg21))\/ 

(g0(Vg22)=g0(Vg21)/\ g1(Vg22)=g1(Vg21)-1/\ g2(Vg22)=g2(Vg21)/\ g0(Vg23)=g0(Vg21)/\ g1(Vg23)=g1(Vg21)-2/\ g2(Vg23)=g2(Vg21))\/ 

(g0(Vg22)=g0(Vg21)/\ g1(Vg22)=g1(Vg21)+1/\ g2(Vg22)=g2(Vg21)/\ g0(Vg23)=g0(Vg21)/\ g1(Vg23)=g1(Vg21)+2/\ g2(Vg23)=g2(Vg21))\/ 

(g0(Vg22)=g0(Vg21)+1/\ g1(Vg22)=g1(Vg21)/\ g2(Vg22)=g2(Vg21)/\ g0(Vg23)=g0(Vg21)+2/\ g1(Vg23)=g1(Vg21)/\ g2(Vg23)=g2(Vg21)));


constraint Vr11 = 141;
constraint Vr12 = 151;
constraint Vr13 = 142;


constraint Vr21 = 213;
constraint Vr22 = 214;
constraint Vr23 = 223;


constraint Vo1 = 411;
constraint Vo2 = 511;
constraint Vo3 = 421;
constraint Vo4 = 412;


constraint Vp1 = 232;
constraint Vp2 = 132;
constraint Vp3 = 133;
constraint Vp4 = 222;
