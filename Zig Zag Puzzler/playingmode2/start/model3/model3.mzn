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


constraint ((Vg11=143 /\ Vg12=243 /\ Vg13=244 /\ Vg14=344)\/(Vg11=443 /\  Vg12=343 /\ Vg13=344 /\ Vg14=244));
constraint ((Vr21=511 /\ Vr22=411) \/ (Vr21=411 /\ Vr22=511));
constraint ((Vo1=122 /\ Vo2=222) \/ (Vo1=222 /\ Vo3=122));
constraint Vp1=322 \/ Vp2=322\/ Vp3=322 \/ Vp4=322;


constraint Vy1 = 111;
constraint Vy2 = 211;
constraint Vy3 = 311;
constraint Vy4 = 221;


constraint Vb11 = 432;
constraint Vb12 = 422;
constraint Vb13 = 421;
constraint Vb14 = 522;
constraint Vb15 = 433;

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

constraint Vg21 = 133;
constraint Vg22 = 233;
constraint Vg23 = 333;


constraint Vr11 = 143;
constraint Vr12 = 144;
constraint Vr13 = 243;

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

