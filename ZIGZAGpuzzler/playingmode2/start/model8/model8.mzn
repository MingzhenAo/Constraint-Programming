% Use this editor as a MiniZinc scratch book
include "alldifferent.mzn";
function var int:g2(var int:a)=a mod 10;
function var int:g1(var int:a)=(a div 10) mod 10;
function var int:g0(var int:a)=a div 100;
set of int: position={
144,244,344,444,544,
133,233,333,433,533,143,243,343,443,543,
122,222,322,422,522,132,232,332,432,532,
111,211,311,411,511,121,221,321,421,521};

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


constraint ((Vg11=122 \/  Vg12=222)\/(Vg11=222 \/  Vg12=122));
constraint ((Vr11=111 /\ Vr12=211) \/ (Vr11=211 /\ Vr12=111));

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

constraint Vb11 = 133;
constraint Vb12 = 143;
constraint Vb13 = 243;
constraint Vb14 = 132;
constraint Vb15 = 144;

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

constraint Vg21 = 244;
constraint Vg22 = 344;
constraint Vg23 = 444;


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


constraint Vr21 = 543;
constraint Vr22 = 443;
constraint Vr23 = 544;

%Vo
constraint (
(g0(Vo2)=g0(Vo1)/\ g1(Vo2)=g1(Vo1)/\ g2(Vo2)=g2(Vo1)-1/\ g0(Vo3)=g0(Vo1)+1/\ g1(Vo3)=g1(Vo1)/\ g2(Vo3)=g2(Vo1)/\ g0(Vo4)=g0(Vo1)/\ g1(Vo4)=g1(Vo1)-1/\ g2(Vo4)=g2(Vo1))\/ 

(g0(Vo2)=g0(Vo1)-1/\ g1(Vo2)=g1(Vo1)/\ g2(Vo2)=g2(Vo1)/\ g0(Vo3)=g0(Vo1)/\ g1(Vo3)=g1(Vo1)/\ g2(Vo3)=g2(Vo1)+1/\ g0(Vo4)=g0(Vo1)/\ g1(Vo4)=g1(Vo1)+1/\ g2(Vo4)=g2(Vo1))\/ 

(g0(Vo2)=g0(Vo1)/\ g1(Vo2)=g1(Vo1)/\ g2(Vo2)=g2(Vo1)+1/\ g0(Vo3)=g0(Vo1)+1/\ g1(Vo3)=g1(Vo1)/\ g2(Vo3)=g2(Vo1)/\ g0(Vo4)=g0(Vo1)/\ g1(Vo4)=g1(Vo1)+1/\ g2(Vo4)=g2(Vo1))\/ 

(g0(Vo2)=g0(Vo1)/\ g1(Vo2)=g1(Vo1)+1/\ g2(Vo2)=g2(Vo1)/\ g0(Vo3)=g0(Vo1)-1/\ g1(Vo3)=g1(Vo1)/\ g2(Vo3)=g2(Vo1)/\ g0(Vo4)=g0(Vo1)/\ g1(Vo4)=g1(Vo1)/\ g2(Vo4)=g2(Vo1)+1)\/ 

(g0(Vo2)=g0(Vo1)/\ g1(Vo2)=g1(Vo1)/\ g2(Vo2)=g2(Vo1)-1/\ g0(Vo3)=g0(Vo1)-1/\ g1(Vo3)=g1(Vo1)/\ g2(Vo3)=g2(Vo1)/\ g0(Vo4)=g0(Vo1)/\ g1(Vo4)=g1(Vo1)+1/\ g2(Vo4)=g2(Vo1))\/ 

(g0(Vo2)=g0(Vo1)/\ g1(Vo2)=g1(Vo1)/\ g2(Vo2)=g2(Vo1)+1/\ g0(Vo3)=g0(Vo1)-1/\ g1(Vo3)=g1(Vo1)/\ g2(Vo3)=g2(Vo1)/\ g0(Vo4)=g0(Vo1)/\ g1(Vo4)=g1(Vo1)-1/\ g2(Vo4)=g2(Vo1))\/ 

(g0(Vo2)=g0(Vo1)+1/\ g1(Vo2)=g1(Vo1)/\ g2(Vo2)=g2(Vo1)/\ g0(Vo3)=g0(Vo1)/\ g1(Vo3)=g1(Vo1)-1/\ g2(Vo3)=g2(Vo1)/\ g0(Vo4)=g0(Vo1)/\ g1(Vo4)=g1(Vo1)/\ g2(Vo4)=g2(Vo1)-1)\/ 

(g0(Vo2)=g0(Vo1)/\ g1(Vo2)=g1(Vo1)-1/\ g2(Vo2)=g2(Vo1)/\ g0(Vo3)=g0(Vo1)-1/\ g1(Vo3)=g1(Vo1)/\ g2(Vo3)=g2(Vo1)/\ g0(Vo4)=g0(Vo1)/\ g1(Vo4)=g1(Vo1)/\ g2(Vo4)=g2(Vo1)-1)\/ 

(g0(Vo2)=g0(Vo1)/\ g1(Vo2)=g1(Vo1)/\ g2(Vo2)=g2(Vo1)-1/\ g0(Vo3)=g0(Vo1)/\ g1(Vo3)=g1(Vo1)-1/\ g2(Vo3)=g2(Vo1)/\ g0(Vo4)=g0(Vo1)-1/\ g1(Vo4)=g1(Vo1)/\ g2(Vo4)=g2(Vo1))\/ 

(g0(Vo2)=g0(Vo1)-1/\ g1(Vo2)=g1(Vo1)/\ g2(Vo2)=g2(Vo1)/\ g0(Vo3)=g0(Vo1)/\ g1(Vo3)=g1(Vo1)/\ g2(Vo3)=g2(Vo1)-1/\ g0(Vo4)=g0(Vo1)/\ g1(Vo4)=g1(Vo1)-1/\ g2(Vo4)=g2(Vo1))\/ 

(g0(Vo2)=g0(Vo1)/\ g1(Vo2)=g1(Vo1)/\ g2(Vo2)=g2(Vo1)+1/\ g0(Vo3)=g0(Vo1)/\ g1(Vo3)=g1(Vo1)+1/\ g2(Vo3)=g2(Vo1)/\ g0(Vo4)=g0(Vo1)-1/\ g1(Vo4)=g1(Vo1)/\ g2(Vo4)=g2(Vo1))\/ 

(g0(Vo2)=g0(Vo1)/\ g1(Vo2)=g1(Vo1)-1/\ g2(Vo2)=g2(Vo1)/\ g0(Vo3)=g0(Vo1)/\ g1(Vo3)=g1(Vo1)/\ g2(Vo3)=g2(Vo1)-1/\ g0(Vo4)=g0(Vo1)+1/\ g1(Vo4)=g1(Vo1)/\ g2(Vo4)=g2(Vo1))\/ 

(g0(Vo2)=g0(Vo1)/\ g1(Vo2)=g1(Vo1)-1/\ g2(Vo2)=g2(Vo1)/\ g0(Vo3)=g0(Vo1)+1/\ g1(Vo3)=g1(Vo1)/\ g2(Vo3)=g2(Vo1)/\ g0(Vo4)=g0(Vo1)/\ g1(Vo4)=g1(Vo1)/\ g2(Vo4)=g2(Vo1)+1)\/ 

(g0(Vo2)=g0(Vo1)/\ g1(Vo2)=g1(Vo1)/\ g2(Vo2)=g2(Vo1)-1/\ g0(Vo3)=g0(Vo1)/\ g1(Vo3)=g1(Vo1)+1/\ g2(Vo3)=g2(Vo1)/\ g0(Vo4)=g0(Vo1)+1/\ g1(Vo4)=g1(Vo1)/\ g2(Vo4)=g2(Vo1))\/ 

(g0(Vo2)=g0(Vo1)-1/\ g1(Vo2)=g1(Vo1)/\ g2(Vo2)=g2(Vo1)/\ g0(Vo3)=g0(Vo1)/\ g1(Vo3)=g1(Vo1)+1/\ g2(Vo3)=g2(Vo1)/\ g0(Vo4)=g0(Vo1)/\ g1(Vo4)=g1(Vo1)/\ g2(Vo4)=g2(Vo1)-1)\/ 

(g0(Vo2)=g0(Vo1)+1/\ g1(Vo2)=g1(Vo1)/\ g2(Vo2)=g2(Vo1)/\ g0(Vo3)=g0(Vo1)/\ g1(Vo3)=g1(Vo1)+1/\ g2(Vo3)=g2(Vo1)/\ g0(Vo4)=g0(Vo1)/\ g1(Vo4)=g1(Vo1)/\ g2(Vo4)=g2(Vo1)+1)\/ 

(g0(Vo2)=g0(Vo1)+1/\ g1(Vo2)=g1(Vo1)/\ g2(Vo2)=g2(Vo1)/\ g0(Vo3)=g0(Vo1)/\ g1(Vo3)=g1(Vo1)/\ g2(Vo3)=g2(Vo1)+1/\ g0(Vo4)=g0(Vo1)/\ g1(Vo4)=g1(Vo1)-1/\ g2(Vo4)=g2(Vo1))\/ 

(g0(Vo2)=g0(Vo1)/\ g1(Vo2)=g1(Vo1)/\ g2(Vo2)=g2(Vo1)+1/\ g0(Vo3)=g0(Vo1)/\ g1(Vo3)=g1(Vo1)-1/\ g2(Vo3)=g2(Vo1)/\ g0(Vo4)=g0(Vo1)+1/\ g1(Vo4)=g1(Vo1)/\ g2(Vo4)=g2(Vo1))\/ 

(g0(Vo2)=g0(Vo1)/\ g1(Vo2)=g1(Vo1)+1/\ g2(Vo2)=g2(Vo1)/\ g0(Vo3)=g0(Vo1)/\ g1(Vo3)=g1(Vo1)/\ g2(Vo3)=g2(Vo1)+1/\ g0(Vo4)=g0(Vo1)+1/\ g1(Vo4)=g1(Vo1)/\ g2(Vo4)=g2(Vo1))\/ 

(g0(Vo2)=g0(Vo1)/\ g1(Vo2)=g1(Vo1)+1/\ g2(Vo2)=g2(Vo1)/\ g0(Vo3)=g0(Vo1)/\ g1(Vo3)=g1(Vo1)/\ g2(Vo3)=g2(Vo1)-1/\ g0(Vo4)=g0(Vo1)-1/\ g1(Vo4)=g1(Vo1)/\ g2(Vo4)=g2(Vo1))\/ 

(g0(Vo2)=g0(Vo1)/\ g1(Vo2)=g1(Vo1)+1/\ g2(Vo2)=g2(Vo1)/\ g0(Vo3)=g0(Vo1)+1/\ g1(Vo3)=g1(Vo1)/\ g2(Vo3)=g2(Vo1)/\ g0(Vo4)=g0(Vo1)/\ g1(Vo4)=g1(Vo1)/\ g2(Vo4)=g2(Vo1)-1)\/ 

(g0(Vo2)=g0(Vo1)+1/\ g1(Vo2)=g1(Vo1)/\ g2(Vo2)=g2(Vo1)/\ g0(Vo3)=g0(Vo1)/\ g1(Vo3)=g1(Vo1)/\ g2(Vo3)=g2(Vo1)-1/\ g0(Vo4)=g0(Vo1)/\ g1(Vo4)=g1(Vo1)+1/\ g2(Vo4)=g2(Vo1))\/ 

(g0(Vo2)=g0(Vo1)/\ g1(Vo2)=g1(Vo1)-1/\ g2(Vo2)=g2(Vo1)/\ g0(Vo3)=g0(Vo1)/\ g1(Vo3)=g1(Vo1)/\ g2(Vo3)=g2(Vo1)+1/\ g0(Vo4)=g0(Vo1)-1/\ g1(Vo4)=g1(Vo1)/\ g2(Vo4)=g2(Vo1))\/ 

(g0(Vo2)=g0(Vo1)-1/\ g1(Vo2)=g1(Vo1)/\ g2(Vo2)=g2(Vo1)/\ g0(Vo3)=g0(Vo1)/\ g1(Vo3)=g1(Vo1)-1/\ g2(Vo3)=g2(Vo1)/\ g0(Vo4)=g0(Vo1)/\ g1(Vo4)=g1(Vo1)/\ g2(Vo4)=g2(Vo1)+1));

constraint Vp1 = 333;
constraint Vp2 = 233;
constraint Vp3 = 232;
constraint Vp4 = 343;
