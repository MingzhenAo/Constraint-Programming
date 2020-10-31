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



%Vy
constraint (
(g0(Vy2)=g0(Vy1)/\ g1(Vy2)=g1(Vy1)/\ g2(Vy2)=g2(Vy1)+1/\ g0(Vy3)=g0(Vy1)/\ g1(Vy3)=g1(Vy1)/\ g2(Vy3)=g2(Vy1)+2/\ g0(Vy4)=g0(Vy1)/\ g1(Vy4)=g1(Vy1)-1/\ g2(Vy4)=g2(Vy1)+1)\/ 

(g0(Vy2)=g0(Vy1)/\ g1(Vy2)=g1(Vy1)-1/\ g2(Vy2)=g2(Vy1)/\ g0(Vy3)=g0(Vy1)/\ g1(Vy3)=g1(Vy1)-2/\ g2(Vy3)=g2(Vy1)/\ g0(Vy4)=g0(Vy1)-1/\ g1(Vy4)=g1(Vy1)-1/\ g2(Vy4)=g2(Vy1))\/ 

(g0(Vy2)=g0(Vy1)/\ g1(Vy2)=g1(Vy1)/\ g2(Vy2)=g2(Vy1)+1/\ g0(Vy3)=g0(Vy1)/\ g1(Vy3)=g1(Vy1)/\ g2(Vy3)=g2(Vy1)+2/\ g0(Vy4)=g0(Vy1)/\ g1(Vy4)=g1(Vy1)+1/\ g2(Vy4)=g2(Vy1)+1)\/ 

(g0(Vy2)=g0(Vy1)/\ g1(Vy2)=g1(Vy1)/\ g2(Vy2)=g2(Vy1)-1/\ g0(Vy3)=g0(Vy1)/\ g1(Vy3)=g1(Vy1)/\ g2(Vy3)=g2(Vy1)-2/\ g0(Vy4)=g0(Vy1)/\ g1(Vy4)=g1(Vy1)+1/\ g2(Vy4)=g2(Vy1)-1)\/ 

(g0(Vy2)=g0(Vy1)-1/\ g1(Vy2)=g1(Vy1)/\ g2(Vy2)=g2(Vy1)/\ g0(Vy3)=g0(Vy1)-2/\ g1(Vy3)=g1(Vy1)/\ g2(Vy3)=g2(Vy1)/\ g0(Vy4)=g0(Vy1)-1/\ g1(Vy4)=g1(Vy1)/\ g2(Vy4)=g2(Vy1)+1)\/ 

(g0(Vy2)=g0(Vy1)/\ g1(Vy2)=g1(Vy1)-1/\ g2(Vy2)=g2(Vy1)/\ g0(Vy3)=g0(Vy1)/\ g1(Vy3)=g1(Vy1)-2/\ g2(Vy3)=g2(Vy1)/\ g0(Vy4)=g0(Vy1)/\ g1(Vy4)=g1(Vy1)-1/\ g2(Vy4)=g2(Vy1)+1)\/ 

(g0(Vy2)=g0(Vy1)+1/\ g1(Vy2)=g1(Vy1)/\ g2(Vy2)=g2(Vy1)/\ g0(Vy3)=g0(Vy1)+2/\ g1(Vy3)=g1(Vy1)/\ g2(Vy3)=g2(Vy1)/\ g0(Vy4)=g0(Vy1)+1/\ g1(Vy4)=g1(Vy1)/\ g2(Vy4)=g2(Vy1)-1)\/ 

(g0(Vy2)=g0(Vy1)/\ g1(Vy2)=g1(Vy1)+1/\ g2(Vy2)=g2(Vy1)/\ g0(Vy3)=g0(Vy1)/\ g1(Vy3)=g1(Vy1)+2/\ g2(Vy3)=g2(Vy1)/\ g0(Vy4)=g0(Vy1)/\ g1(Vy4)=g1(Vy1)+1/\ g2(Vy4)=g2(Vy1)-1)\/ 

(g0(Vy2)=g0(Vy1)/\ g1(Vy2)=g1(Vy1)-1/\ g2(Vy2)=g2(Vy1)/\ g0(Vy3)=g0(Vy1)/\ g1(Vy3)=g1(Vy1)-2/\ g2(Vy3)=g2(Vy1)/\ g0(Vy4)=g0(Vy1)+1/\ g1(Vy4)=g1(Vy1)-1/\ g2(Vy4)=g2(Vy1))\/ 

(g0(Vy2)=g0(Vy1)/\ g1(Vy2)=g1(Vy1)/\ g2(Vy2)=g2(Vy1)-1/\ g0(Vy3)=g0(Vy1)/\ g1(Vy3)=g1(Vy1)/\ g2(Vy3)=g2(Vy1)-2/\ g0(Vy4)=g0(Vy1)/\ g1(Vy4)=g1(Vy1)-1/\ g2(Vy4)=g2(Vy1)-1)\/ 

(g0(Vy2)=g0(Vy1)+1/\ g1(Vy2)=g1(Vy1)/\ g2(Vy2)=g2(Vy1)/\ g0(Vy3)=g0(Vy1)+2/\ g1(Vy3)=g1(Vy1)/\ g2(Vy3)=g2(Vy1)/\ g0(Vy4)=g0(Vy1)+1/\ g1(Vy4)=g1(Vy1)+1/\ g2(Vy4)=g2(Vy1))\/ 

(g0(Vy2)=g0(Vy1)+1/\ g1(Vy2)=g1(Vy1)/\ g2(Vy2)=g2(Vy1)/\ g0(Vy3)=g0(Vy1)+2/\ g1(Vy3)=g1(Vy1)/\ g2(Vy3)=g2(Vy1)/\ g0(Vy4)=g0(Vy1)+1/\ g1(Vy4)=g1(Vy1)-1/\ g2(Vy4)=g2(Vy1))\/ 

(g0(Vy2)=g0(Vy1)/\ g1(Vy2)=g1(Vy1)/\ g2(Vy2)=g2(Vy1)+1/\ g0(Vy3)=g0(Vy1)/\ g1(Vy3)=g1(Vy1)/\ g2(Vy3)=g2(Vy1)+2/\ g0(Vy4)=g0(Vy1)-1/\ g1(Vy4)=g1(Vy1)/\ g2(Vy4)=g2(Vy1)+1)\/ 

(g0(Vy2)=g0(Vy1)/\ g1(Vy2)=g1(Vy1)/\ g2(Vy2)=g2(Vy1)-1/\ g0(Vy3)=g0(Vy1)/\ g1(Vy3)=g1(Vy1)/\ g2(Vy3)=g2(Vy1)-2/\ g0(Vy4)=g0(Vy1)-1/\ g1(Vy4)=g1(Vy1)/\ g2(Vy4)=g2(Vy1)-1)\/ 

(g0(Vy2)=g0(Vy1)-1/\ g1(Vy2)=g1(Vy1)/\ g2(Vy2)=g2(Vy1)/\ g0(Vy3)=g0(Vy1)-2/\ g1(Vy3)=g1(Vy1)/\ g2(Vy3)=g2(Vy1)/\ g0(Vy4)=g0(Vy1)-1/\ g1(Vy4)=g1(Vy1)+1/\ g2(Vy4)=g2(Vy1))\/ 

(g0(Vy2)=g0(Vy1)-1/\ g1(Vy2)=g1(Vy1)/\ g2(Vy2)=g2(Vy1)/\ g0(Vy3)=g0(Vy1)-2/\ g1(Vy3)=g1(Vy1)/\ g2(Vy3)=g2(Vy1)/\ g0(Vy4)=g0(Vy1)-1/\ g1(Vy4)=g1(Vy1)/\ g2(Vy4)=g2(Vy1)-1)\/ 

(g0(Vy2)=g0(Vy1)/\ g1(Vy2)=g1(Vy1)+1/\ g2(Vy2)=g2(Vy1)/\ g0(Vy3)=g0(Vy1)/\ g1(Vy3)=g1(Vy1)+2/\ g2(Vy3)=g2(Vy1)/\ g0(Vy4)=g0(Vy1)-1/\ g1(Vy4)=g1(Vy1)+1/\ g2(Vy4)=g2(Vy1))\/ 

(g0(Vy2)=g0(Vy1)/\ g1(Vy2)=g1(Vy1)/\ g2(Vy2)=g2(Vy1)+1/\ g0(Vy3)=g0(Vy1)/\ g1(Vy3)=g1(Vy1)/\ g2(Vy3)=g2(Vy1)+2/\ g0(Vy4)=g0(Vy1)+1/\ g1(Vy4)=g1(Vy1)/\ g2(Vy4)=g2(Vy1)+1)\/ 

(g0(Vy2)=g0(Vy1)/\ g1(Vy2)=g1(Vy1)/\ g2(Vy2)=g2(Vy1)-1/\ g0(Vy3)=g0(Vy1)/\ g1(Vy3)=g1(Vy1)/\ g2(Vy3)=g2(Vy1)-2/\ g0(Vy4)=g0(Vy1)+1/\ g1(Vy4)=g1(Vy1)/\ g2(Vy4)=g2(Vy1)-1)\/ 

(g0(Vy2)=g0(Vy1)-1/\ g1(Vy2)=g1(Vy1)/\ g2(Vy2)=g2(Vy1)/\ g0(Vy3)=g0(Vy1)-2/\ g1(Vy3)=g1(Vy1)/\ g2(Vy3)=g2(Vy1)/\ g0(Vy4)=g0(Vy1)-1/\ g1(Vy4)=g1(Vy1)-1/\ g2(Vy4)=g2(Vy1))\/ 

(g0(Vy2)=g0(Vy1)/\ g1(Vy2)=g1(Vy1)-1/\ g2(Vy2)=g2(Vy1)/\ g0(Vy3)=g0(Vy1)/\ g1(Vy3)=g1(Vy1)-2/\ g2(Vy3)=g2(Vy1)/\ g0(Vy4)=g0(Vy1)/\ g1(Vy4)=g1(Vy1)-1/\ g2(Vy4)=g2(Vy1)-1)\/ 

(g0(Vy2)=g0(Vy1)+1/\ g1(Vy2)=g1(Vy1)/\ g2(Vy2)=g2(Vy1)/\ g0(Vy3)=g0(Vy1)+2/\ g1(Vy3)=g1(Vy1)/\ g2(Vy3)=g2(Vy1)/\ g0(Vy4)=g0(Vy1)+1/\ g1(Vy4)=g1(Vy1)/\ g2(Vy4)=g2(Vy1)+1)\/ 

(g0(Vy2)=g0(Vy1)/\ g1(Vy2)=g1(Vy1)+1/\ g2(Vy2)=g2(Vy1)/\ g0(Vy3)=g0(Vy1)/\ g1(Vy3)=g1(Vy1)+2/\ g2(Vy3)=g2(Vy1)/\ g0(Vy4)=g0(Vy1)+1/\ g1(Vy4)=g1(Vy1)+1/\ g2(Vy4)=g2(Vy1))\/ 

(g0(Vy2)=g0(Vy1)/\ g1(Vy2)=g1(Vy1)+1/\ g2(Vy2)=g2(Vy1)/\ g0(Vy3)=g0(Vy1)/\ g1(Vy3)=g1(Vy1)+2/\ g2(Vy3)=g2(Vy1)/\ g0(Vy4)=g0(Vy1)/\ g1(Vy4)=g1(Vy1)+1/\ g2(Vy4)=g2(Vy1)+1));

constraint Vb11 = 142;
constraint Vb12 = 141;
constraint Vb13 = 241;
constraint Vb14 = 132;
constraint Vb15 = 151;

%Vb2
constraint(
(g0(Vb22)=g0(Vb21)-1/\ g1(Vb22)=g1(Vb21)/\ g2(Vb22)=g2(Vb21)/\ g0(Vb23)=g0(Vb21)/\ g1(Vb23)=g1(Vb21)/\ g2(Vb23)=g2(Vb21)-1/\ g0(Vb24)=g0(Vb21)/\ g1(Vb24)=g1(Vb21)-1/\ g2(Vb24)=g2(Vb21)-1/\ g0(Vb25)=g0(Vb21)-1/\ g1(Vb25)=g1(Vb21)/\ g2(Vb25)=g2(Vb21)+1)\/ 

(g0(Vb22)=g0(Vb21)/\ g1(Vb22)=g1(Vb21)/\ g2(Vb22)=g2(Vb21)+1/\ g0(Vb23)=g0(Vb21)/\ g1(Vb23)=g1(Vb21)+1/\ g2(Vb23)=g2(Vb21)/\ g0(Vb24)=g0(Vb21)-1/\ g1(Vb24)=g1(Vb21)+1/\ g2(Vb24)=g2(Vb21)/\ g0(Vb25)=g0(Vb21)/\ g1(Vb25)=g1(Vb21)-1/\ g2(Vb25)=g2(Vb21)+1)\/ 

(g0(Vb22)=g0(Vb21)/\ g1(Vb22)=g1(Vb21)/\ g2(Vb22)=g2(Vb21)+1/\ g0(Vb23)=g0(Vb21)-1/\ g1(Vb23)=g1(Vb21)/\ g2(Vb23)=g2(Vb21)/\ g0(Vb24)=g0(Vb21)-1/\ g1(Vb24)=g1(Vb21)-1/\ g2(Vb24)=g2(Vb21)/\ g0(Vb25)=g0(Vb21)+1/\ g1(Vb25)=g1(Vb21)/\ g2(Vb25)=g2(Vb21)+1)\/ 

(g0(Vb22)=g0(Vb21)/\ g1(Vb22)=g1(Vb21)+1/\ g2(Vb22)=g2(Vb21)/\ g0(Vb23)=g0(Vb21)-1/\ g1(Vb23)=g1(Vb21)/\ g2(Vb23)=g2(Vb21)/\ g0(Vb24)=g0(Vb21)-1/\ g1(Vb24)=g1(Vb21)/\ g2(Vb24)=g2(Vb21)+1/\ g0(Vb25)=g0(Vb21)+1/\ g1(Vb25)=g1(Vb21)+1/\ g2(Vb25)=g2(Vb21))\/ 

(g0(Vb22)=g0(Vb21)/\ g1(Vb22)=g1(Vb21)/\ g2(Vb22)=g2(Vb21)-1/\ g0(Vb23)=g0(Vb21)+1/\ g1(Vb23)=g1(Vb21)/\ g2(Vb23)=g2(Vb21)/\ g0(Vb24)=g0(Vb21)+1/\ g1(Vb24)=g1(Vb21)-1/\ g2(Vb24)=g2(Vb21)/\ g0(Vb25)=g0(Vb21)-1/\ g1(Vb25)=g1(Vb21)/\ g2(Vb25)=g2(Vb21)-1)\/ 

(g0(Vb22)=g0(Vb21)-1/\ g1(Vb22)=g1(Vb21)/\ g2(Vb22)=g2(Vb21)/\ g0(Vb23)=g0(Vb21)/\ g1(Vb23)=g1(Vb21)-1/\ g2(Vb23)=g2(Vb21)/\ g0(Vb24)=g0(Vb21)/\ g1(Vb24)=g1(Vb21)-1/\ g2(Vb24)=g2(Vb21)+1/\ g0(Vb25)=g0(Vb21)-1/\ g1(Vb25)=g1(Vb21)+1/\ g2(Vb25)=g2(Vb21))\/ 

(g0(Vb22)=g0(Vb21)+1/\ g1(Vb22)=g1(Vb21)/\ g2(Vb22)=g2(Vb21)/\ g0(Vb23)=g0(Vb21)/\ g1(Vb23)=g1(Vb21)/\ g2(Vb23)=g2(Vb21)-1/\ g0(Vb24)=g0(Vb21)/\ g1(Vb24)=g1(Vb21)+1/\ g2(Vb24)=g2(Vb21)-1/\ g0(Vb25)=g0(Vb21)+1/\ g1(Vb25)=g1(Vb21)/\ g2(Vb25)=g2(Vb21)+1)\/ 

(g0(Vb22)=g0(Vb21)/\ g1(Vb22)=g1(Vb21)+1/\ g2(Vb22)=g2(Vb21)/\ g0(Vb23)=g0(Vb21)/\ g1(Vb23)=g1(Vb21)/\ g2(Vb23)=g2(Vb21)-1/\ g0(Vb24)=g0(Vb21)-1/\ g1(Vb24)=g1(Vb21)/\ g2(Vb24)=g2(Vb21)-1/\ g0(Vb25)=g0(Vb21)/\ g1(Vb25)=g1(Vb21)+1/\ g2(Vb25)=g2(Vb21)+1)\/ 

(g0(Vb22)=g0(Vb21)/\ g1(Vb22)=g1(Vb21)/\ g2(Vb22)=g2(Vb21)-1/\ g0(Vb23)=g0(Vb21)/\ g1(Vb23)=g1(Vb21)-1/\ g2(Vb23)=g2(Vb21)/\ g0(Vb24)=g0(Vb21)-1/\ g1(Vb24)=g1(Vb21)-1/\ g2(Vb24)=g2(Vb21)/\ g0(Vb25)=g0(Vb21)/\ g1(Vb25)=g1(Vb21)+1/\ g2(Vb25)=g2(Vb21)-1)\/ 

(g0(Vb22)=g0(Vb21)/\ g1(Vb22)=g1(Vb21)-1/\ g2(Vb22)=g2(Vb21)/\ g0(Vb23)=g0(Vb21)/\ g1(Vb23)=g1(Vb21)/\ g2(Vb23)=g2(Vb21)-1/\ g0(Vb24)=g0(Vb21)+1/\ g1(Vb24)=g1(Vb21)/\ g2(Vb24)=g2(Vb21)-1/\ g0(Vb25)=g0(Vb21)/\ g1(Vb25)=g1(Vb21)-1/\ g2(Vb25)=g2(Vb21)+1)\/ 

(g0(Vb22)=g0(Vb21)+1/\ g1(Vb22)=g1(Vb21)/\ g2(Vb22)=g2(Vb21)/\ g0(Vb23)=g0(Vb21)/\ g1(Vb23)=g1(Vb21)-1/\ g2(Vb23)=g2(Vb21)/\ g0(Vb24)=g0(Vb21)/\ g1(Vb24)=g1(Vb21)-1/\ g2(Vb24)=g2(Vb21)-1/\ g0(Vb25)=g0(Vb21)+1/\ g1(Vb25)=g1(Vb21)+1/\ g2(Vb25)=g2(Vb21))\/ 

(g0(Vb22)=g0(Vb21)/\ g1(Vb22)=g1(Vb21)/\ g2(Vb22)=g2(Vb21)+1/\ g0(Vb23)=g0(Vb21)+1/\ g1(Vb23)=g1(Vb21)/\ g2(Vb23)=g2(Vb21)/\ g0(Vb24)=g0(Vb21)+1/\ g1(Vb24)=g1(Vb21)+1/\ g2(Vb24)=g2(Vb21)/\ g0(Vb25)=g0(Vb21)-1/\ g1(Vb25)=g1(Vb21)/\ g2(Vb25)=g2(Vb21)+1)\/ 

(g0(Vb22)=g0(Vb21)+1/\ g1(Vb22)=g1(Vb21)/\ g2(Vb22)=g2(Vb21)/\ g0(Vb23)=g0(Vb21)/\ g1(Vb23)=g1(Vb21)/\ g2(Vb23)=g2(Vb21)+1/\ g0(Vb24)=g0(Vb21)/\ g1(Vb24)=g1(Vb21)-1/\ g2(Vb24)=g2(Vb21)+1/\ g0(Vb25)=g0(Vb21)+1/\ g1(Vb25)=g1(Vb21)/\ g2(Vb25)=g2(Vb21)-1)\/ 

(g0(Vb22)=g0(Vb21)-1/\ g1(Vb22)=g1(Vb21)/\ g2(Vb22)=g2(Vb21)/\ g0(Vb23)=g0(Vb21)/\ g1(Vb23)=g1(Vb21)+1/\ g2(Vb23)=g2(Vb21)/\ g0(Vb24)=g0(Vb21)/\ g1(Vb24)=g1(Vb21)+1/\ g2(Vb24)=g2(Vb21)-1/\ g0(Vb25)=g0(Vb21)-1/\ g1(Vb25)=g1(Vb21)-1/\ g2(Vb25)=g2(Vb21))\/ 

(g0(Vb22)=g0(Vb21)/\ g1(Vb22)=g1(Vb21)-1/\ g2(Vb22)=g2(Vb21)/\ g0(Vb23)=g0(Vb21)/\ g1(Vb23)=g1(Vb21)/\ g2(Vb23)=g2(Vb21)+1/\ g0(Vb24)=g0(Vb21)-1/\ g1(Vb24)=g1(Vb21)/\ g2(Vb24)=g2(Vb21)+1/\ g0(Vb25)=g0(Vb21)/\ g1(Vb25)=g1(Vb21)-1/\ g2(Vb25)=g2(Vb21)-1)\/ 

(g0(Vb22)=g0(Vb21)/\ g1(Vb22)=g1(Vb21)/\ g2(Vb22)=g2(Vb21)-1/\ g0(Vb23)=g0(Vb21)/\ g1(Vb23)=g1(Vb21)+1/\ g2(Vb23)=g2(Vb21)/\ g0(Vb24)=g0(Vb21)+1/\ g1(Vb24)=g1(Vb21)+1/\ g2(Vb24)=g2(Vb21)/\ g0(Vb25)=g0(Vb21)/\ g1(Vb25)=g1(Vb21)-1/\ g2(Vb25)=g2(Vb21)-1)\/ 

(g0(Vb22)=g0(Vb21)-1/\ g1(Vb22)=g1(Vb21)/\ g2(Vb22)=g2(Vb21)/\ g0(Vb23)=g0(Vb21)/\ g1(Vb23)=g1(Vb21)/\ g2(Vb23)=g2(Vb21)+1/\ g0(Vb24)=g0(Vb21)/\ g1(Vb24)=g1(Vb21)+1/\ g2(Vb24)=g2(Vb21)+1/\ g0(Vb25)=g0(Vb21)-1/\ g1(Vb25)=g1(Vb21)/\ g2(Vb25)=g2(Vb21)-1)\/ 

(g0(Vb22)=g0(Vb21)/\ g1(Vb22)=g1(Vb21)+1/\ g2(Vb22)=g2(Vb21)/\ g0(Vb23)=g0(Vb21)/\ g1(Vb23)=g1(Vb21)/\ g2(Vb23)=g2(Vb21)+1/\ g0(Vb24)=g0(Vb21)+1/\ g1(Vb24)=g1(Vb21)/\ g2(Vb24)=g2(Vb21)+1/\ g0(Vb25)=g0(Vb21)/\ g1(Vb25)=g1(Vb21)+1/\ g2(Vb25)=g2(Vb21)-1)\/ 

(g0(Vb22)=g0(Vb21)/\ g1(Vb22)=g1(Vb21)-1/\ g2(Vb22)=g2(Vb21)/\ g0(Vb23)=g0(Vb21)+1/\ g1(Vb23)=g1(Vb21)/\ g2(Vb23)=g2(Vb21)/\ g0(Vb24)=g0(Vb21)+1/\ g1(Vb24)=g1(Vb21)/\ g2(Vb24)=g2(Vb21)+1/\ g0(Vb25)=g0(Vb21)-1/\ g1(Vb25)=g1(Vb21)-1/\ g2(Vb25)=g2(Vb21))\/ 

(g0(Vb22)=g0(Vb21)/\ g1(Vb22)=g1(Vb21)/\ g2(Vb22)=g2(Vb21)+1/\ g0(Vb23)=g0(Vb21)/\ g1(Vb23)=g1(Vb21)-1/\ g2(Vb23)=g2(Vb21)/\ g0(Vb24)=g0(Vb21)+1/\ g1(Vb24)=g1(Vb21)-1/\ g2(Vb24)=g2(Vb21)/\ g0(Vb25)=g0(Vb21)/\ g1(Vb25)=g1(Vb21)+1/\ g2(Vb25)=g2(Vb21)+1)\/ 

(g0(Vb22)=g0(Vb21)/\ g1(Vb22)=g1(Vb21)/\ g2(Vb22)=g2(Vb21)-1/\ g0(Vb23)=g0(Vb21)-1/\ g1(Vb23)=g1(Vb21)/\ g2(Vb23)=g2(Vb21)/\ g0(Vb24)=g0(Vb21)-1/\ g1(Vb24)=g1(Vb21)+1/\ g2(Vb24)=g2(Vb21)/\ g0(Vb25)=g0(Vb21)+1/\ g1(Vb25)=g1(Vb21)/\ g2(Vb25)=g2(Vb21)-1)\/ 

(g0(Vb22)=g0(Vb21)+1/\ g1(Vb22)=g1(Vb21)/\ g2(Vb22)=g2(Vb21)/\ g0(Vb23)=g0(Vb21)/\ g1(Vb23)=g1(Vb21)+1/\ g2(Vb23)=g2(Vb21)/\ g0(Vb24)=g0(Vb21)/\ g1(Vb24)=g1(Vb21)+1/\ g2(Vb24)=g2(Vb21)+1/\ g0(Vb25)=g0(Vb21)+1/\ g1(Vb25)=g1(Vb21)-1/\ g2(Vb25)=g2(Vb21))\/ 

(g0(Vb22)=g0(Vb21)/\ g1(Vb22)=g1(Vb21)+1/\ g2(Vb22)=g2(Vb21)/\ g0(Vb23)=g0(Vb21)+1/\ g1(Vb23)=g1(Vb21)/\ g2(Vb23)=g2(Vb21)/\ g0(Vb24)=g0(Vb21)+1/\ g1(Vb24)=g1(Vb21)/\ g2(Vb24)=g2(Vb21)-1/\ g0(Vb25)=g0(Vb21)-1/\ g1(Vb25)=g1(Vb21)+1/\ g2(Vb25)=g2(Vb21))\/ 

(g0(Vb22)=g0(Vb21)/\ g1(Vb22)=g1(Vb21)-1/\ g2(Vb22)=g2(Vb21)/\ g0(Vb23)=g0(Vb21)-1/\ g1(Vb23)=g1(Vb21)/\ g2(Vb23)=g2(Vb21)/\ g0(Vb24)=g0(Vb21)-1/\ g1(Vb24)=g1(Vb21)/\ g2(Vb24)=g2(Vb21)-1/\ g0(Vb25)=g0(Vb21)+1/\ g1(Vb25)=g1(Vb21)-1/\ g2(Vb25)=g2(Vb21)));

constraint Vg11 = 421;
constraint Vg12 = 321;
constraint Vg13 = 331;
constraint Vg14 = 231;

%Vg2
constraint (
(g0(Vg22)=g0(Vg21)/\ g1(Vg22)=g1(Vg21)/\ g2(Vg22)=g2(Vg21)+1/\ g0(Vg23)=g0(Vg21)/\ g1(Vg23)=g1(Vg21)/\ g2(Vg23)=g2(Vg21)+2)\/ 

(g0(Vg22)=g0(Vg21)/\ g1(Vg22)=g1(Vg21)/\ g2(Vg22)=g2(Vg21)-1/\ g0(Vg23)=g0(Vg21)/\ g1(Vg23)=g1(Vg21)/\ g2(Vg23)=g2(Vg21)-2)\/ 

(g0(Vg22)=g0(Vg21)-1/\ g1(Vg22)=g1(Vg21)/\ g2(Vg22)=g2(Vg21)/\ g0(Vg23)=g0(Vg21)-2/\ g1(Vg23)=g1(Vg21)/\ g2(Vg23)=g2(Vg21))\/ 

(g0(Vg22)=g0(Vg21)/\ g1(Vg22)=g1(Vg21)-1/\ g2(Vg22)=g2(Vg21)/\ g0(Vg23)=g0(Vg21)/\ g1(Vg23)=g1(Vg21)-2/\ g2(Vg23)=g2(Vg21))\/ 

(g0(Vg22)=g0(Vg21)/\ g1(Vg22)=g1(Vg21)+1/\ g2(Vg22)=g2(Vg21)/\ g0(Vg23)=g0(Vg21)/\ g1(Vg23)=g1(Vg21)+2/\ g2(Vg23)=g2(Vg21))\/ 

(g0(Vg22)=g0(Vg21)+1/\ g1(Vg22)=g1(Vg21)/\ g2(Vg22)=g2(Vg21)/\ g0(Vg23)=g0(Vg21)+2/\ g1(Vg23)=g1(Vg21)/\ g2(Vg23)=g2(Vg21)));


%Vr1
constraint (
(g0(Vr12)=g0(Vr11)  /\ g1(Vr12)=g1(Vr11)  /\ g2(Vr12)=g2(Vr11) -1/\ g0(Vr13)=g0(Vr11)+1/\ g1(Vr13)=g1(Vr11)  /\ g2(Vr13)=g2(Vr11)  )\/ 

(g0(Vr12)=g0(Vr11) -1/\ g1(Vr12)=g1(Vr11)  /\ g2(Vr12)=g2(Vr11)  /\ g0(Vr13)=g0(Vr11)  /\ g1(Vr13)=g1(Vr11)+1/\ g2(Vr13)=g2(Vr11)  )\/ 

(g0(Vr12)=g0(Vr11) -1/\ g1(Vr12)=g1(Vr11)  /\ g2(Vr12)=g2(Vr11)  /\ g0(Vr13)=g0(Vr11)  /\ g1(Vr13)=g1(Vr11)  /\ g2(Vr13)=g2(Vr11) -1)\/ 

(g0(Vr12)=g0(Vr11)  /\ g1(Vr12)=g1(Vr11)+1/\ g2(Vr12)=g2(Vr11)  /\ g0(Vr13)=g0(Vr11) -1/\ g1(Vr13)=g1(Vr11)  /\ g2(Vr13)=g2(Vr11)  )\/ 

(g0(Vr12)=g0(Vr11)  /\ g1(Vr12)=g1(Vr11)+1/\ g2(Vr12)=g2(Vr11)  /\ g0(Vr13)=g0(Vr11)  /\ g1(Vr13)=g1(Vr11)  /\ g2(Vr13)=g2(Vr11)+1)\/ 

(g0(Vr12)=g0(Vr11)  /\ g1(Vr12)=g1(Vr11) -1/\ g2(Vr12)=g2(Vr11)  /\ g0(Vr13)=g0(Vr11) -1/\ g1(Vr13)=g1(Vr11)  /\ g2(Vr13)=g2(Vr11)  )\/ 

(g0(Vr12)=g0(Vr11)  /\ g1(Vr12)=g1(Vr11) -1/\ g2(Vr12)=g2(Vr11)  /\ g0(Vr13)=g0(Vr11)  /\ g1(Vr13)=g1(Vr11)  /\ g2(Vr13)=g2(Vr11)+1)\/ 

(g0(Vr12)=g0(Vr11)  /\ g1(Vr12)=g1(Vr11)+1/\ g2(Vr12)=g2(Vr11)  /\ g0(Vr13)=g0(Vr11)+1/\ g1(Vr13)=g1(Vr11)  /\ g2(Vr13)=g2(Vr11)  )\/ 

(g0(Vr12)=g0(Vr11)+1/\ g1(Vr12)=g1(Vr11)  /\ g2(Vr12)=g2(Vr11)  /\ g0(Vr13)=g0(Vr11)  /\ g1(Vr13)=g1(Vr11)  /\ g2(Vr13)=g2(Vr11)+1)\/ 

(g0(Vr12)=g0(Vr11)  /\ g1(Vr12)=g1(Vr11) -1/\ g2(Vr12)=g2(Vr11)  /\ g0(Vr13)=g0(Vr11)+1/\ g1(Vr13)=g1(Vr11)  /\ g2(Vr13)=g2(Vr11)  )\/ 

(g0(Vr12)=g0(Vr11)  /\ g1(Vr12)=g1(Vr11)  /\ g2(Vr12)=g2(Vr11)+1/\ g0(Vr13)=g0(Vr11)  /\ g1(Vr13)=g1(Vr11) -1/\ g2(Vr13)=g2(Vr11)  )\/ 

(g0(Vr12)=g0(Vr11)  /\ g1(Vr12)=g1(Vr11)  /\ g2(Vr12)=g2(Vr11)+1/\ g0(Vr13)=g0(Vr11)  /\ g1(Vr13)=g1(Vr11)+1/\ g2(Vr13)=g2(Vr11)  )\/ 

(g0(Vr12)=g0(Vr11) -1/\ g1(Vr12)=g1(Vr11)  /\ g2(Vr12)=g2(Vr11)  /\ g0(Vr13)=g0(Vr11)  /\ g1(Vr13)=g1(Vr11)  /\ g2(Vr13)=g2(Vr11)+1)\/ 

(g0(Vr12)=g0(Vr11)  /\ g1(Vr12)=g1(Vr11)  /\ g2(Vr12)=g2(Vr11) -1/\ g0(Vr13)=g0(Vr11)  /\ g1(Vr13)=g1(Vr11) -1/\ g2(Vr13)=g2(Vr11)  )\/ 

(g0(Vr12)=g0(Vr11)  /\ g1(Vr12)=g1(Vr11)  /\ g2(Vr12)=g2(Vr11) -1/\ g0(Vr13)=g0(Vr11)  /\ g1(Vr13)=g1(Vr11)+1/\ g2(Vr13)=g2(Vr11)  )\/ 

(g0(Vr12)=g0(Vr11)  /\ g1(Vr12)=g1(Vr11)  /\ g2(Vr12)=g2(Vr11)+1/\ g0(Vr13)=g0(Vr11) -1/\ g1(Vr13)=g1(Vr11)  /\ g2(Vr13)=g2(Vr11)  )\/ 

(g0(Vr12)=g0(Vr11)  /\ g1(Vr12)=g1(Vr11)+1/\ g2(Vr12)=g2(Vr11)  /\ g0(Vr13)=g0(Vr11)  /\ g1(Vr13)=g1(Vr11)  /\ g2(Vr13)=g2(Vr11) -1)\/ 

(g0(Vr12)=g0(Vr11)+1/\ g1(Vr12)=g1(Vr11)  /\ g2(Vr12)=g2(Vr11)  /\ g0(Vr13)=g0(Vr11)  /\ g1(Vr13)=g1(Vr11) -1/\ g2(Vr13)=g2(Vr11)  )\/ 

(g0(Vr12)=g0(Vr11)+1/\ g1(Vr12)=g1(Vr11)  /\ g2(Vr12)=g2(Vr11)  /\ g0(Vr13)=g0(Vr11)  /\ g1(Vr13)=g1(Vr11)+1/\ g2(Vr13)=g2(Vr11)  )\/ 

(g0(Vr12)=g0(Vr11)  /\ g1(Vr12)=g1(Vr11) -1/\ g2(Vr12)=g2(Vr11)  /\ g0(Vr13)=g0(Vr11)  /\ g1(Vr13)=g1(Vr11)  /\ g2(Vr13)=g2(Vr11) -1)\/ 

(g0(Vr12)=g0(Vr11)+1/\ g1(Vr12)=g1(Vr11)  /\ g2(Vr12)=g2(Vr11)  /\ g0(Vr13)=g0(Vr11)  /\ g1(Vr13)=g1(Vr11)  /\ g2(Vr13)=g2(Vr11) -1)\/ 

(g0(Vr12)=g0(Vr11)  /\ g1(Vr12)=g1(Vr11)  /\ g2(Vr12)=g2(Vr11) -1/\ g0(Vr13)=g0(Vr11) -1/\ g1(Vr13)=g1(Vr11)  /\ g2(Vr13)=g2(Vr11)  )\/ 

(g0(Vr12)=g0(Vr11)  /\ g1(Vr12)=g1(Vr11)  /\ g2(Vr12)=g2(Vr11)+1/\ g0(Vr13)=g0(Vr11)+1/\ g1(Vr13)=g1(Vr11)  /\ g2(Vr13)=g2(Vr11)  )\/ 

(g0(Vr12)=g0(Vr11) -1/\ g1(Vr12)=g1(Vr11)  /\ g2(Vr12)=g2(Vr11)  /\ g0(Vr13)=g0(Vr11)  /\ g1(Vr13)=g1(Vr11) -1/\ g2(Vr13)=g2(Vr11)));

%Vr2
constraint (
(g0(Vr22)=g0(Vr21)  /\ g1(Vr22)=g1(Vr21)  /\ g2(Vr22)=g2(Vr21) -1/\ g0(Vr23)=g0(Vr21)+1/\ g1(Vr23)=g1(Vr21)  /\ g2(Vr23)=g2(Vr21)  )\/ 

(g0(Vr22)=g0(Vr21) -1/\ g1(Vr22)=g1(Vr21)  /\ g2(Vr22)=g2(Vr21)  /\ g0(Vr23)=g0(Vr21)  /\ g1(Vr23)=g1(Vr21)+1/\ g2(Vr23)=g2(Vr21)  )\/ 

(g0(Vr22)=g0(Vr21) -1/\ g1(Vr22)=g1(Vr21)  /\ g2(Vr22)=g2(Vr21)  /\ g0(Vr23)=g0(Vr21)  /\ g1(Vr23)=g1(Vr21)  /\ g2(Vr23)=g2(Vr21) -1)\/ 

(g0(Vr22)=g0(Vr21)  /\ g1(Vr22)=g1(Vr21)+1/\ g2(Vr22)=g2(Vr21)  /\ g0(Vr23)=g0(Vr21) -1/\ g1(Vr23)=g1(Vr21)  /\ g2(Vr23)=g2(Vr21)  )\/ 

(g0(Vr22)=g0(Vr21)  /\ g1(Vr22)=g1(Vr21)+1/\ g2(Vr22)=g2(Vr21)  /\ g0(Vr23)=g0(Vr21)  /\ g1(Vr23)=g1(Vr21)  /\ g2(Vr23)=g2(Vr21)+1)\/ 

(g0(Vr22)=g0(Vr21)  /\ g1(Vr22)=g1(Vr21) -1/\ g2(Vr22)=g2(Vr21)  /\ g0(Vr23)=g0(Vr21) -1/\ g1(Vr23)=g1(Vr21)  /\ g2(Vr23)=g2(Vr21)  )\/ 

(g0(Vr22)=g0(Vr21)  /\ g1(Vr22)=g1(Vr21) -1/\ g2(Vr22)=g2(Vr21)  /\ g0(Vr23)=g0(Vr21)  /\ g1(Vr23)=g1(Vr21)  /\ g2(Vr23)=g2(Vr21)+1)\/ 

(g0(Vr22)=g0(Vr21)  /\ g1(Vr22)=g1(Vr21)+1/\ g2(Vr22)=g2(Vr21)  /\ g0(Vr23)=g0(Vr21)+1/\ g1(Vr23)=g1(Vr21)  /\ g2(Vr23)=g2(Vr21)  )\/ 

(g0(Vr22)=g0(Vr21)+1/\ g1(Vr22)=g1(Vr21)  /\ g2(Vr22)=g2(Vr21)  /\ g0(Vr23)=g0(Vr21)  /\ g1(Vr23)=g1(Vr21)  /\ g2(Vr23)=g2(Vr21)+1)\/ 

(g0(Vr22)=g0(Vr21)  /\ g1(Vr22)=g1(Vr21) -1/\ g2(Vr22)=g2(Vr21)  /\ g0(Vr23)=g0(Vr21)+1/\ g1(Vr23)=g1(Vr21)  /\ g2(Vr23)=g2(Vr21)  )\/ 

(g0(Vr22)=g0(Vr21)  /\ g1(Vr22)=g1(Vr21)  /\ g2(Vr22)=g2(Vr21)+1/\ g0(Vr23)=g0(Vr21)  /\ g1(Vr23)=g1(Vr21) -1/\ g2(Vr23)=g2(Vr21)  )\/ 

(g0(Vr22)=g0(Vr21)  /\ g1(Vr22)=g1(Vr21)  /\ g2(Vr22)=g2(Vr21)+1/\ g0(Vr23)=g0(Vr21)  /\ g1(Vr23)=g1(Vr21)+1/\ g2(Vr23)=g2(Vr21)  )\/ 

(g0(Vr22)=g0(Vr21) -1/\ g1(Vr22)=g1(Vr21)  /\ g2(Vr22)=g2(Vr21)  /\ g0(Vr23)=g0(Vr21)  /\ g1(Vr23)=g1(Vr21)  /\ g2(Vr23)=g2(Vr21)+1)\/ 

(g0(Vr22)=g0(Vr21)  /\ g1(Vr22)=g1(Vr21)  /\ g2(Vr22)=g2(Vr21) -1/\ g0(Vr23)=g0(Vr21)  /\ g1(Vr23)=g1(Vr21) -1/\ g2(Vr23)=g2(Vr21)  )\/ 

(g0(Vr22)=g0(Vr21)  /\ g1(Vr22)=g1(Vr21)  /\ g2(Vr22)=g2(Vr21) -1/\ g0(Vr23)=g0(Vr21)  /\ g1(Vr23)=g1(Vr21)+1/\ g2(Vr23)=g2(Vr21)  )\/ 

(g0(Vr22)=g0(Vr21)  /\ g1(Vr22)=g1(Vr21)  /\ g2(Vr22)=g2(Vr21)+1/\ g0(Vr23)=g0(Vr21) -1/\ g1(Vr23)=g1(Vr21)  /\ g2(Vr23)=g2(Vr21)  )\/ 

(g0(Vr22)=g0(Vr21)  /\ g1(Vr22)=g1(Vr21)+1/\ g2(Vr22)=g2(Vr21)  /\ g0(Vr23)=g0(Vr21)  /\ g1(Vr23)=g1(Vr21)  /\ g2(Vr23)=g2(Vr21) -1)\/ 

(g0(Vr22)=g0(Vr21)+1/\ g1(Vr22)=g1(Vr21)  /\ g2(Vr22)=g2(Vr21)  /\ g0(Vr23)=g0(Vr21)  /\ g1(Vr23)=g1(Vr21) -1/\ g2(Vr23)=g2(Vr21)  )\/ 

(g0(Vr22)=g0(Vr21)+1/\ g1(Vr22)=g1(Vr21)  /\ g2(Vr22)=g2(Vr21)  /\ g0(Vr23)=g0(Vr21)  /\ g1(Vr23)=g1(Vr21)+1/\ g2(Vr23)=g2(Vr21)  )\/ 

(g0(Vr22)=g0(Vr21)  /\ g1(Vr22)=g1(Vr21) -1/\ g2(Vr22)=g2(Vr21)  /\ g0(Vr23)=g0(Vr21)  /\ g1(Vr23)=g1(Vr21)  /\ g2(Vr23)=g2(Vr21) -1)\/ 

(g0(Vr22)=g0(Vr21)+1/\ g1(Vr22)=g1(Vr21)  /\ g2(Vr22)=g2(Vr21)  /\ g0(Vr23)=g0(Vr21)  /\ g1(Vr23)=g1(Vr21)  /\ g2(Vr23)=g2(Vr21) -1)\/ 

(g0(Vr22)=g0(Vr21)  /\ g1(Vr22)=g1(Vr21)  /\ g2(Vr22)=g2(Vr21) -1/\ g0(Vr23)=g0(Vr21) -1/\ g1(Vr23)=g1(Vr21)  /\ g2(Vr23)=g2(Vr21)  )\/ 

(g0(Vr22)=g0(Vr21)  /\ g1(Vr22)=g1(Vr21)  /\ g2(Vr22)=g2(Vr21)+1/\ g0(Vr23)=g0(Vr21)+1/\ g1(Vr23)=g1(Vr21)  /\ g2(Vr23)=g2(Vr21)  )\/ 

(g0(Vr22)=g0(Vr21) -1/\ g1(Vr22)=g1(Vr21)  /\ g2(Vr22)=g2(Vr21)  /\ g0(Vr23)=g0(Vr21)  /\ g1(Vr23)=g1(Vr21) -1/\ g2(Vr23)=g2(Vr21)));

constraint Vo1 = 312;
constraint Vo2 = 313;
constraint Vo3 = 412;
constraint Vo4 = 322;

%Vp
constraint (
(g0(Vp2)=g0(Vp1)/\ g1(Vp2)=g1(Vp1)/\ g2(Vp2)=g2(Vp1)-1/\ g0(Vp3)=g0(Vp1)/\ g1(Vp3)=g1(Vp1)+1/\ g2(Vp3)=g2(Vp1)-1/\ g0(Vp4)=g0(Vp1)-1/\ g1(Vp4)=g1(Vp1)/\ g2(Vp4)=g2(Vp1))\/ 

(g0(Vp2)=g0(Vp1)+1/\ g1(Vp2)=g1(Vp1)/\ g2(Vp2)=g2(Vp1)/\ g0(Vp3)=g0(Vp1)+1/\ g1(Vp3)=g1(Vp1)-1/\ g2(Vp3)=g2(Vp1)/\ g0(Vp4)=g0(Vp1)/\ g1(Vp4)=g1(Vp1)/\ g2(Vp4)=g2(Vp1)+1)\/ 

(g0(Vp2)=g0(Vp1)-1/\ g1(Vp2)=g1(Vp1)/\ g2(Vp2)=g2(Vp1)/\ g0(Vp3)=g0(Vp1)-1/\ g1(Vp3)=g1(Vp1)+1/\ g2(Vp3)=g2(Vp1)/\ g0(Vp4)=g0(Vp1)/\ g1(Vp4)=g1(Vp1)/\ g2(Vp4)=g2(Vp1)+1)\/ 

(g0(Vp2)=g0(Vp1)-1/\ g1(Vp2)=g1(Vp1)/\ g2(Vp2)=g2(Vp1)/\ g0(Vp3)=g0(Vp1)-1/\ g1(Vp3)=g1(Vp1)/\ g2(Vp3)=g2(Vp1)+1/\ g0(Vp4)=g0(Vp1)/\ g1(Vp4)=g1(Vp1)-1/\ g2(Vp4)=g2(Vp1))\/ 

(g0(Vp2)=g0(Vp1)/\ g1(Vp2)=g1(Vp1)-1/\ g2(Vp2)=g2(Vp1)/\ g0(Vp3)=g0(Vp1)-1/\ g1(Vp3)=g1(Vp1)-1/\ g2(Vp3)=g2(Vp1)/\ g0(Vp4)=g0(Vp1)/\ g1(Vp4)=g1(Vp1)/\ g2(Vp4)=g2(Vp1)+1)\/ 

(g0(Vp2)=g0(Vp1)/\ g1(Vp2)=g1(Vp1)/\ g2(Vp2)=g2(Vp1)+1/\ g0(Vp3)=g0(Vp1)+1/\ g1(Vp3)=g1(Vp1)/\ g2(Vp3)=g2(Vp1)+1/\ g0(Vp4)=g0(Vp1)/\ g1(Vp4)=g1(Vp1)-1/\ g2(Vp4)=g2(Vp1))\/ 

(g0(Vp2)=g0(Vp1)/\ g1(Vp2)=g1(Vp1)/\ g2(Vp2)=g2(Vp1)+1/\ g0(Vp3)=g0(Vp1)/\ g1(Vp3)=g1(Vp1)-1/\ g2(Vp3)=g2(Vp1)+1/\ g0(Vp4)=g0(Vp1)-1/\ g1(Vp4)=g1(Vp1)/\ g2(Vp4)=g2(Vp1))\/ 

(g0(Vp2)=g0(Vp1)-1/\ g1(Vp2)=g1(Vp1)/\ g2(Vp2)=g2(Vp1)/\ g0(Vp3)=g0(Vp1)-1/\ g1(Vp3)=g1(Vp1)-1/\ g2(Vp3)=g2(Vp1)/\ g0(Vp4)=g0(Vp1)/\ g1(Vp4)=g1(Vp1)/\ g2(Vp4)=g2(Vp1)-1)\/ 

(g0(Vp2)=g0(Vp1)+1/\ g1(Vp2)=g1(Vp1)/\ g2(Vp2)=g2(Vp1)/\ g0(Vp3)=g0(Vp1)+1/\ g1(Vp3)=g1(Vp1)/\ g2(Vp3)=g2(Vp1)+1/\ g0(Vp4)=g0(Vp1)/\ g1(Vp4)=g1(Vp1)+1/\ g2(Vp4)=g2(Vp1))\/ 

(g0(Vp2)=g0(Vp1)-1/\ g1(Vp2)=g1(Vp1)/\ g2(Vp2)=g2(Vp1)/\ g0(Vp3)=g0(Vp1)-1/\ g1(Vp3)=g1(Vp1)/\ g2(Vp3)=g2(Vp1)-1/\ g0(Vp4)=g0(Vp1)/\ g1(Vp4)=g1(Vp1)+1/\ g2(Vp4)=g2(Vp1))\/ 

(g0(Vp2)=g0(Vp1)/\ g1(Vp2)=g1(Vp1)-1/\ g2(Vp2)=g2(Vp1)/\ g0(Vp3)=g0(Vp1)/\ g1(Vp3)=g1(Vp1)-1/\ g2(Vp3)=g2(Vp1)+1/\ g0(Vp4)=g0(Vp1)+1/\ g1(Vp4)=g1(Vp1)/\ g2(Vp4)=g2(Vp1))\/ 

(g0(Vp2)=g0(Vp1)/\ g1(Vp2)=g1(Vp1)-1/\ g2(Vp2)=g2(Vp1)/\ g0(Vp3)=g0(Vp1)/\ g1(Vp3)=g1(Vp1)-1/\ g2(Vp3)=g2(Vp1)-1/\ g0(Vp4)=g0(Vp1)-1/\ g1(Vp4)=g1(Vp1)/\ g2(Vp4)=g2(Vp1))\/ 

(g0(Vp2)=g0(Vp1)/\ g1(Vp2)=g1(Vp1)/\ g2(Vp2)=g2(Vp1)+1/\ g0(Vp3)=g0(Vp1)-1/\ g1(Vp3)=g1(Vp1)/\ g2(Vp3)=g2(Vp1)+1/\ g0(Vp4)=g0(Vp1)/\ g1(Vp4)=g1(Vp1)+1/\ g2(Vp4)=g2(Vp1))\/ 

(g0(Vp2)=g0(Vp1)/\ g1(Vp2)=g1(Vp1)/\ g2(Vp2)=g2(Vp1)+1/\ g0(Vp3)=g0(Vp1)/\ g1(Vp3)=g1(Vp1)+1/\ g2(Vp3)=g2(Vp1)+1/\ g0(Vp4)=g0(Vp1)+1/\ g1(Vp4)=g1(Vp1)/\ g2(Vp4)=g2(Vp1))\/ 

(g0(Vp2)=g0(Vp1)/\ g1(Vp2)=g1(Vp1)+1/\ g2(Vp2)=g2(Vp1)/\ g0(Vp3)=g0(Vp1)+1/\ g1(Vp3)=g1(Vp1)+1/\ g2(Vp3)=g2(Vp1)/\ g0(Vp4)=g0(Vp1)/\ g1(Vp4)=g1(Vp1)/\ g2(Vp4)=g2(Vp1)+1)\/ 

(g0(Vp2)=g0(Vp1)/\ g1(Vp2)=g1(Vp1)-1/\ g2(Vp2)=g2(Vp1)/\ g0(Vp3)=g0(Vp1)+1/\ g1(Vp3)=g1(Vp1)-1/\ g2(Vp3)=g2(Vp1)/\ g0(Vp4)=g0(Vp1)/\ g1(Vp4)=g1(Vp1)/\ g2(Vp4)=g2(Vp1)-1)\/ 

(g0(Vp2)=g0(Vp1)/\ g1(Vp2)=g1(Vp1)/\ g2(Vp2)=g2(Vp1)-1/\ g0(Vp3)=g0(Vp1)+1/\ g1(Vp3)=g1(Vp1)/\ g2(Vp3)=g2(Vp1)-1/\ g0(Vp4)=g0(Vp1)/\ g1(Vp4)=g1(Vp1)+1/\ g2(Vp4)=g2(Vp1))\/ 

(g0(Vp2)=g0(Vp1)/\ g1(Vp2)=g1(Vp1)+1/\ g2(Vp2)=g2(Vp1)/\ g0(Vp3)=g0(Vp1)-1/\ g1(Vp3)=g1(Vp1)+1/\ g2(Vp3)=g2(Vp1)/\ g0(Vp4)=g0(Vp1)/\ g1(Vp4)=g1(Vp1)/\ g2(Vp4)=g2(Vp1)-1)\/ 

(g0(Vp2)=g0(Vp1)/\ g1(Vp2)=g1(Vp1)+1/\ g2(Vp2)=g2(Vp1)/\ g0(Vp3)=g0(Vp1)/\ g1(Vp3)=g1(Vp1)+1/\ g2(Vp3)=g2(Vp1)+1/\ g0(Vp4)=g0(Vp1)-1/\ g1(Vp4)=g1(Vp1)/\ g2(Vp4)=g2(Vp1))\/ 

(g0(Vp2)=g0(Vp1)+1/\ g1(Vp2)=g1(Vp1)/\ g2(Vp2)=g2(Vp1)/\ g0(Vp3)=g0(Vp1)+1/\ g1(Vp3)=g1(Vp1)/\ g2(Vp3)=g2(Vp1)-1/\ g0(Vp4)=g0(Vp1)/\ g1(Vp4)=g1(Vp1)-1/\ g2(Vp4)=g2(Vp1))\/ 

(g0(Vp2)=g0(Vp1)+1/\ g1(Vp2)=g1(Vp1)/\ g2(Vp2)=g2(Vp1)/\ g0(Vp3)=g0(Vp1)+1/\ g1(Vp3)=g1(Vp1)+1/\ g2(Vp3)=g2(Vp1)/\ g0(Vp4)=g0(Vp1)/\ g1(Vp4)=g1(Vp1)/\ g2(Vp4)=g2(Vp1)-1)\/ 

(g0(Vp2)=g0(Vp1)/\ g1(Vp2)=g1(Vp1)/\ g2(Vp2)=g2(Vp1)-1/\ g0(Vp3)=g0(Vp1)/\ g1(Vp3)=g1(Vp1)-1/\ g2(Vp3)=g2(Vp1)-1/\ g0(Vp4)=g0(Vp1)+1/\ g1(Vp4)=g1(Vp1)/\ g2(Vp4)=g2(Vp1))\/ 

(g0(Vp2)=g0(Vp1)/\ g1(Vp2)=g1(Vp1)/\ g2(Vp2)=g2(Vp1)-1/\ g0(Vp3)=g0(Vp1)-1/\ g1(Vp3)=g1(Vp1)/\ g2(Vp3)=g2(Vp1)-1/\ g0(Vp4)=g0(Vp1)/\ g1(Vp4)=g1(Vp1)-1/\ g2(Vp4)=g2(Vp1))\/ 

(g0(Vp2)=g0(Vp1)/\ g1(Vp2)=g1(Vp1)+1/\ g2(Vp2)=g2(Vp1)/\ g0(Vp3)=g0(Vp1)/\ g1(Vp3)=g1(Vp1)+1/\ g2(Vp3)=g2(Vp1)-1/\ g0(Vp4)=g0(Vp1)+1/\ g1(Vp4)=g1(Vp1)/\ g2(Vp4)=g2(Vp1)));

