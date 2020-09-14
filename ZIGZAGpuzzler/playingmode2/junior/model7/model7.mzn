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


constraint (Vr11=422/\Vr12=421/\Vr13=432)\/(Vr11=421/\Vr12=321/\Vr13=422)\/(Vr11=421/\Vr12=521/\Vr13=422)\/(Vr11=432/\Vr12=532/\Vr13=422)\/(Vr11=432/\Vr12=332/\Vr13=422);



constraint Vy1 = 211;
constraint Vy2 = 311;
constraint Vy3 = 411;
constraint Vy4 = 321;

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

constraint Vb21 = 221;
constraint Vb22 = 222;
constraint Vb23 = 121;
constraint Vb24 = 111;
constraint Vb25 = 322;

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

constraint Vo1 = 543;
constraint Vo2 = 533;
constraint Vo3 = 544;
constraint Vo4 = 443;


constraint Vp1 = 132;
constraint Vp2 = 133;
constraint Vp3 = 233;
constraint Vp4 = 122;
