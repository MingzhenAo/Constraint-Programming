% Use this editor as a MiniZinc scratch book
include "alldifferent.mzn";
function var int:g0(var int:a)=a mod 10;
function var int:g1(var int:a)=a div 10;
set of int: position={
14,24,34,44,54,64,74,84,
13,23,33,43,53,63,73,83,
12,22,32,42,52,62,72,82,
11,21,31,41,51,61,71,81};

var int:Vpr; var int:Vpb1;var int:Vpb2;var int:Vpg1;var int:Vpg2; var int:Vpy1;var int:Vpy2;

var position: Vb11;var position: Vb12;var position: Vb13;var position: Vb14;var position: Vb15;
var position: Vb21;var position: Vb22;var position: Vb23;var position: Vb24;
var position: Vg11;var position: Vg12;var position: Vg13;var position: Vg14;
var position: Vg21;var position: Vg22;var position: Vg23;
var position: Vr11;var position: Vr12;var position: Vr13;var position: Vr14; 
var position: Vr21;var position: Vr22;var position: Vr23;var position: Vr24;
var position: Vy11;var position: Vy12;var position: Vy13;
var position: Vy21;var position: Vy22;var position: Vy23;var position: Vy24;var position: Vy25;


%red peg
constraint (Vpr=00)\/(Vr12=Vpr)\/(Vr21=Vpr)\/(Vr23=Vpr);
%blue peg1
constraint (Vpb1=00)\/(Vb13=Vpb1)\/(Vb15=Vpb1)\/(Vb23=Vpb1);
%blue peg1
constraint (Vpb2=00)\/(Vb13=Vpb2)\/(Vb15=Vpb2)\/(Vb23=Vpb2);
%green peg1
constraint (Vpg1=00)\/(Vg13=Vpg1)\/(Vg14=Vpg1)\/(Vg22=Vpg1)\/(Vg23=Vpg1);
%green peg2
constraint (Vpg2=00)\/(Vg13=Vpg2)\/(Vg14=Vpg2)\/(Vg22=Vpg2)\/(Vg23=Vpg2);
%yellow peg1
constraint (Vpy1=00)\/(Vy11=Vpy1)\/(Vy21=Vpy1)\/(Vy22=Vpy1)\/(Vy24=Vpy1);
%yellow peg2
constraint (Vpy2=00)\/(Vy11=Vpy2)\/(Vy21=Vpy2)\/(Vy22=Vpy2)\/(Vy24=Vpy2);



%all the Vunits are different
constraint alldifferent([Vy11,Vy12,Vy13,Vy21,Vy22,Vy23,Vy24,Vy25,Vb11,Vb12,Vb13,Vb14,Vb15,Vb21,Vb22,Vb23,Vb24,Vg11,Vg12,Vg13,Vg14,
Vg21,Vg22,Vg23,Vr11,Vr12,Vr13,Vr14,Vr21,Vr22,Vr23,Vr24]);

%blue piece1
constraint (g0(Vb12) = g0(Vb11)/\ g1(Vb12) = g1(Vb11) + 1/\ g0(Vb13) = g0(Vb11) + 1/\ g1(Vb13) = g1(Vb11) + 1
            /\ g0(Vb14) = g0(Vb11)/\ g1(Vb14) = g1(Vb11) + 2/\ g0(Vb15) = g0(Vb11) + 1/\ g1(Vb15) = g1(Vb11) + 2) \/
            
           (g0(Vb12) = g0(Vb11) - 1/\ g1(Vb12) = g1(Vb11)/\ g0(Vb13) = g0(Vb11) - 1/\ g1(Vb13) = g1(Vb11) + 1
            /\ g0(Vb14) = g0(Vb11) - 2/\ g1(Vb14) = g1(Vb11)/\ g0(Vb15) = g0(Vb11) - 2/\ g1(Vb15) = g1(Vb11) + 1) \/
            
           (g0(Vb12) = g0(Vb11)/\ g1(Vb12) = g1(Vb11) - 1/\ g0(Vb13) = g0(Vb11) - 1/\ g1(Vb13) = g1(Vb11) - 1
            /\ g0(Vb14) = g0(Vb11)/\ g1(Vb14) = g1(Vb11) - 2/\ g0(Vb15) = g0(Vb11) - 1/\ g1(Vb15) = g1(Vb11) - 2) \/
            
           (g0(Vb12) = g0(Vb11) + 1/\ g1(Vb12) = g1(Vb11)/\ g0(Vb13) = g0(Vb11) + 1/\ g1(Vb13) = g1(Vb11) - 1
            /\ g0(Vb14) = g0(Vb11) + 2/\ g1(Vb14) = g1(Vb11)/\ g0(Vb15) = g0(Vb11) + 2/\ g1(Vb15) = g1(Vb11) - 1) \/
            
           (g0(Vb12) = g0(Vb11)/\ g1(Vb12) = g1(Vb11) + 1/\ g0(Vb13) = g0(Vb11) - 1/\ g1(Vb13) = g1(Vb11) + 1
            /\ g0(Vb14) = g0(Vb11)/\ g1(Vb14) = g1(Vb11) + 2/\ g0(Vb15) = g0(Vb11) - 1/\ g1(Vb15) = g1(Vb11) + 2) \/
            
           (g0(Vb12) = g0(Vb11) - 1/\ g1(Vb12) = g1(Vb11)/\ g0(Vb13) = g0(Vb11) - 1/\ g1(Vb13) = g1(Vb11) - 1
            /\ g0(Vb14) = g0(Vb11) - 2/\ g1(Vb14) = g1(Vb11)/\ g0(Vb15) = g0(Vb11) - 2/\ g1(Vb15) = g1(Vb11) - 1) \/
            
           (g0(Vb12) = g0(Vb11)/\ g1(Vb12) = g1(Vb11) - 1/\ g0(Vb13) = g0(Vb11) + 1/\ g1(Vb13) = g1(Vb11) - 1
            /\ g0(Vb14) = g0(Vb11)/\ g1(Vb14) = g1(Vb11) - 2/\ g0(Vb15) = g0(Vb11) + 1/\ g1(Vb15) = g1(Vb11) - 2) \/
            
           (g0(Vb12) = g0(Vb11) + 1/\ g1(Vb12) = g1(Vb11)/\ g0(Vb13) = g0(Vb11) + 1/\ g1(Vb13) = g1(Vb11) + 1
            /\ g0(Vb14) = g0(Vb11) + 2/\ g1(Vb14) = g1(Vb11)/\ g0(Vb15) = g0(Vb11) + 2/\ g1(Vb15) = g1(Vb11) + 1);

%blue piece2 
constraint (g0(Vb22) = g0(Vb21) + 1/\ g1(Vb22) = g1(Vb21)/\ g0(Vb23) = g0(Vb21) + 2/\ g1(Vb23) = g1(Vb21)/\ g0(Vb24) = g0(Vb21) + 3/\ g1(Vb24) = g1(Vb21)) \/
            
           (g0(Vb22) = g0(Vb21)/\ g1(Vb22) = g1(Vb21) + 1/\ g0(Vb23) = g0(Vb21)/\ g1(Vb23) = g1(Vb21) + 2/\ g0(Vb24) = g0(Vb21)/\ g1(Vb24) = g1(Vb21) + 3) \/
            
           (g0(Vb22) = g0(Vb21) - 1/\ g1(Vb22) = g1(Vb21)/\ g0(Vb23) = g0(Vb21) - 2/\ g1(Vb23) = g1(Vb21)/\ g0(Vb24) = g0(Vb21) - 3/\ g1(Vb24) = g1(Vb21)) \/
            
           (g0(Vb22) = g0(Vb21)/\ g1(Vb22) = g1(Vb21) - 1/\ g0(Vb23) = g0(Vb21)/\ g1(Vb23) = g1(Vb21) - 2/\ g0(Vb24) = g0(Vb21)/\ g1(Vb24) = g1(Vb21) - 3);

%yellow piece1
constraint (g0(Vy12) = g0(Vy11) + 1/\ g1(Vy12) = g1(Vy11)/\ g0(Vy13) = g0(Vy11) + 2/\ g1(Vy13) = g1(Vy11)) \/

           (g0(Vy12) = g0(Vy11)/\ g1(Vy12) = g1(Vy11) + 1/\ g0(Vy13) = g0(Vy11)/\ g1(Vy13) = g1(Vy11) + 2) \/
           
           (g0(Vy12) = g0(Vy11) - 1/\ g1(Vy12) = g1(Vy11)/\ g0(Vy13) = g0(Vy11) - 2/\ g1(Vy13) = g1(Vy11)) \/
           
           (g0(Vy12) = g0(Vy11)/\ g1(Vy12) = g1(Vy11) - 1/\ g0(Vy13) = g0(Vy11)/\ g1(Vy13) = g1(Vy11) - 2);
           
%yellow piece2           
constraint (g0(Vy22) = g0(Vy21) + 1/\ g1(Vy22) = g1(Vy21)/\ g0(Vy23) = g0(Vy21) + 1/\ g1(Vy23) = g1(Vy21) + 1
            /\ g0(Vy24) = g0(Vy21) + 2/\ g1(Vy24) = g1(Vy21) + 1/\ g0(Vy25) = g0(Vy21) + 1/\ g1(Vy25) = g1(Vy21) + 2) \/
            
           (g0(Vy22) = g0(Vy21)/\ g1(Vy22) = g1(Vy21) + 1/\ g0(Vy23) = g0(Vy21) - 1/\ g1(Vy23) = g1(Vy21) + 1
            /\ g0(Vy24) = g0(Vy21) - 1/\ g1(Vy24) = g1(Vy21) + 2/\ g0(Vy25) = g0(Vy21) - 2/\ g1(Vy25) = g1(Vy21) + 1) \/
            
           (g0(Vy22) = g0(Vy21) - 1/\ g1(Vy22) = g1(Vy21)/\ g0(Vy23) = g0(Vy21) - 1/\ g1(Vy23) = g1(Vy21) - 1
            /\ g0(Vy24) = g0(Vy21) - 2/\ g1(Vy24) = g1(Vy21) - 1/\ g0(Vy25) = g0(Vy21) - 1/\ g1(Vy25) = g1(Vy21) - 2) \/
            
           (g0(Vy22) = g0(Vy21)/\ g1(Vy22) = g1(Vy21) - 1/\ g0(Vy23) = g0(Vy21) + 1/\ g1(Vy23) = g1(Vy21) - 1
            /\ g0(Vy24) = g0(Vy21) + 1/\ g1(Vy24) = g1(Vy21) - 2/\ g0(Vy25) = g0(Vy21) + 2/\ g1(Vy25) = g1(Vy21) - 1) \/
            
           (g0(Vy22) = g0(Vy21) - 1/\ g1(Vy22) = g1(Vy21)/\ g0(Vy23) = g0(Vy21) - 1/\ g1(Vy23) = g1(Vy21) + 1
            /\ g0(Vy24) = g0(Vy21) - 2/\ g1(Vy24) = g1(Vy21) + 1/\ g0(Vy25) = g0(Vy21) - 1/\ g1(Vy25) = g1(Vy21) + 2) \/
            
           (g0(Vy22) = g0(Vy21)/\ g1(Vy22) = g1(Vy21) - 1/\ g0(Vy23) = g0(Vy21) - 1/\ g1(Vy23) = g1(Vy21) - 1
            /\ g0(Vy24) = g0(Vy21) - 1/\ g1(Vy24) = g1(Vy21) - 2/\ g0(Vy25) = g0(Vy21) - 2/\ g1(Vy25) = g1(Vy21) - 1) \/
            
           (g0(Vy22) = g0(Vy21) + 1/\ g1(Vy22) = g1(Vy21)/\ g0(Vy23) = g0(Vy21) + 1/\ g1(Vy23) = g1(Vy21) - 1
            /\ g0(Vy24) = g0(Vy21) + 2/\ g1(Vy24) = g1(Vy21) - 1/\ g0(Vy25) = g0(Vy21) + 1/\ g1(Vy25) = g1(Vy21) - 2) \/
            
           (g0(Vy22) = g0(Vy21)/\ g1(Vy22) = g1(Vy21) + 1/\ g0(Vy23) = g0(Vy21) + 1/\ g1(Vy23) = g1(Vy21) + 1
            /\ g0(Vy24) = g0(Vy21) + 1/\ g1(Vy24) = g1(Vy21) + 2/\ g0(Vy25) = g0(Vy21) + 2/\ g1(Vy25) = g1(Vy21) + 1);

%green piece1            
constraint (g0(Vg12) = g0(Vg11) + 1/\ g1(Vg12) = g1(Vg11)/\ g0(Vg13) = g0(Vg11) + 2/\ g1(Vg13) = g1(Vg11)/\ g0(Vg14) = g0(Vg11) + 1/\ g1(Vg14) = g1(Vg11) + 1) \/
            
           (g0(Vg12) = g0(Vg11)/\ g1(Vg12) = g1(Vg11) + 1/\ g0(Vg13) = g0(Vg11)/\ g1(Vg13) = g1(Vg11) + 2/\ g0(Vg14) = g0(Vg11) - 1/\ g1(Vg14) = g1(Vg11) + 1) \/
            
           (g0(Vg12) = g0(Vg11) - 1/\ g1(Vg12) = g1(Vg11)/\ g0(Vg13) = g0(Vg11) - 2/\ g1(Vg13) = g1(Vg11)/\ g0(Vg14) = g0(Vg11) - 1/\ g1(Vg14) = g1(Vg11) - 1) \/
            
           (g0(Vg12) = g0(Vg11)/\ g1(Vg12) = g1(Vg11) - 1/\ g0(Vg13) = g0(Vg11)/\ g1(Vg13) = g1(Vg11) - 2/\ g0(Vg14) = g0(Vg11) + 1/\ g1(Vg14) = g1(Vg11) - 1) \/
            
           (g0(Vg12) = g0(Vg11) - 1/\ g1(Vg12) = g1(Vg11)/\ g0(Vg13) = g0(Vg11) - 2/\ g1(Vg13) = g1(Vg11)/\ g0(Vg14) = g0(Vg11) - 1/\ g1(Vg14) = g1(Vg11) - 1) \/
            
           (g0(Vg12) = g0(Vg11)/\ g1(Vg12) = g1(Vg11) - 1/\ g0(Vg13) = g0(Vg11)/\ g1(Vg13) = g1(Vg11) - 2/\ g0(Vg14) = g0(Vg11) - 1/\ g1(Vg14) = g1(Vg11) - 1) \/
            
           (g0(Vg12) = g0(Vg11) + 1/\ g1(Vg12) = g1(Vg11)/\ g0(Vg13) = g0(Vg11) + 2/\ g1(Vg13) = g1(Vg11)/\ g0(Vg14) = g0(Vg11) + 1/\ g1(Vg14) = g1(Vg11) - 1) \/
            
           (g0(Vg12) = g0(Vg11)/\ g1(Vg12) = g1(Vg11) + 1/\ g0(Vg13) = g0(Vg11)/\ g1(Vg13) = g1(Vg11) + 2/\ g0(Vg14) = g0(Vg11) + 1/\ g1(Vg14) = g1(Vg11) + 1);

%green piece2           
constraint (g0(Vg22) = g0(Vg21) + 1/\ g1(Vg22) = g1(Vg21)/\ g0(Vg23) = g0(Vg21) + 1/\ g1(Vg23) = g1(Vg21) + 1) \/

           (g0(Vg22) = g0(Vg21)/\ g1(Vg22) = g1(Vg21) + 1/\ g0(Vg23) = g0(Vg21) - 1/\ g1(Vg23) = g1(Vg21) + 1) \/
           
           (g0(Vg22) = g0(Vg21) - 1/\ g1(Vg22) = g1(Vg21)/\ g0(Vg23) = g0(Vg21) - 1/\ g1(Vg23) = g1(Vg21) - 1) \/
           
           (g0(Vg22) = g0(Vg21)/\ g1(Vg22) = g1(Vg21) - 1/\ g0(Vg23) = g0(Vg21) + 1/\ g1(Vg23) = g1(Vg21) - 1) \/
           
           (g0(Vg22) = g0(Vg21) - 1/\ g1(Vg22) = g1(Vg21)/\ g0(Vg23) = g0(Vg21) - 1/\ g1(Vg23) = g1(Vg21) + 1) \/
           
           (g0(Vg22) = g0(Vg21)/\ g1(Vg22) = g1(Vg21) - 1/\ g0(Vg23) = g0(Vg21) - 1/\ g1(Vg23) = g1(Vg21) - 1) \/
           
           (g0(Vg22) = g0(Vg21) + 1/\ g1(Vg22) = g1(Vg21)/\ g0(Vg23) = g0(Vg21) + 1/\ g1(Vg23) = g1(Vg21) - 1) \/
           
           (g0(Vg22) = g0(Vg21)/\ g1(Vg22) = g1(Vg21) + 1/\ g0(Vg23) = g0(Vg21) + 1/\ g1(Vg23) = g1(Vg21) + 1);
           
%red piece1           
constraint (g0(Vr12) = g0(Vr11) + 1/\ g1(Vr12) = g1(Vr11)/\ g0(Vr13) = g0(Vr11) + 1/\ g1(Vr13) = g1(Vr11) + 1/\ g0(Vr14) = g0(Vr11) + 2/\ g1(Vr14) = g1(Vr11) + 1) \/
           
           (g0(Vr12) = g0(Vr11)/\ g1(Vr12) = g1(Vr11) + 1/\ g0(Vr13) = g0(Vr11) - 1/\ g1(Vr13) = g1(Vr11) + 1/\ g0(Vr14) = g0(Vr11) - 1/\ g1(Vr14) = g1(Vr11) + 2) \/
                           
           (g0(Vr12) = g0(Vr11) - 1/\ g1(Vr12) = g1(Vr11)/\ g0(Vr13) = g0(Vr11) - 1/\ g1(Vr13) = g1(Vr11) - 1/\ g0(Vr14) = g0(Vr11) - 2/\ g1(Vr14) = g1(Vr11) - 1) \/
           
           (g0(Vr12) = g0(Vr11)/\ g1(Vr12) = g1(Vr11) - 1/\ g0(Vr13) = g0(Vr11) + 1/\ g1(Vr13) = g1(Vr11) - 1/\ g0(Vr14) = g0(Vr11) + 1/\ g1(Vr14) = g1(Vr11) - 2) \/
           
           (g0(Vr12) = g0(Vr11) - 1/\ g1(Vr12) = g1(Vr11)/\ g0(Vr13) = g0(Vr11) - 1/\ g1(Vr13) = g1(Vr11) + 1/\ g0(Vr14) = g0(Vr11) - 2/\ g1(Vr14) = g1(Vr11) + 1) \/
           
           (g0(Vr12) = g0(Vr11)/\ g1(Vr12) = g1(Vr11) - 1/\ g0(Vr13) = g0(Vr11) - 1/\ g1(Vr13) = g1(Vr11) - 1/\ g0(Vr14) = g0(Vr11) - 1/\ g1(Vr14) = g1(Vr11) - 2) \/
           
           (g0(Vr12) = g0(Vr11) + 1/\ g1(Vr12) = g1(Vr11)/\ g0(Vr13) = g0(Vr11) + 1/\ g1(Vr13) = g1(Vr11) - 1/\ g0(Vr14) = g0(Vr11) + 2/\ g1(Vr14) = g1(Vr11) - 1) \/
           
           (g0(Vr12) = g0(Vr11)/\ g1(Vr12) = g1(Vr11) + 1/\ g0(Vr13) = g0(Vr11) + 1/\ g1(Vr13) = g1(Vr11) + 1/\ g0(Vr14) = g0(Vr11) + 1/\ g1(Vr14) = g1(Vr11) + 2);

%red piece2           
constraint (g0(Vr22) = g0(Vr21) + 1/\ g1(Vr22) = g1(Vr21)/\ g0(Vr23) = g0(Vr21) + 2/\ g1(Vr23) = g1(Vr21)/\ g0(Vr24) = g0(Vr21)/\ g1(Vr24) = g1(Vr21) + 1) \/

           (g0(Vr22) = g0(Vr21)/\ g1(Vr22) = g1(Vr21) + 1/\ g0(Vr23) = g0(Vr21)/\ g1(Vr23) = g1(Vr21) + 2/\ g0(Vr24) = g0(Vr21) - 1/\ g1(Vr24) = g1(Vr21)) \/
           
           (g0(Vr22) = g0(Vr21) - 1/\ g1(Vr22) = g1(Vr21)/\ g0(Vr23) = g0(Vr21) - 2/\ g1(Vr23) = g1(Vr21)/\ g0(Vr24) = g0(Vr21)/\ g1(Vr24) = g1(Vr21) - 1) \/
           
           (g0(Vr22) = g0(Vr21)/\ g1(Vr22) = g1(Vr21) - 1/\ g0(Vr23) = g0(Vr21)/\ g1(Vr23) = g1(Vr21) - 2/\ g0(Vr24) = g0(Vr21) + 1/\ g1(Vr24) = g1(Vr21)) \/
           
           (g0(Vr22) = g0(Vr21) - 1/\ g1(Vr22) = g1(Vr21)/\ g0(Vr23) = g0(Vr21) - 2/\ g1(Vr23) = g1(Vr21)/\ g0(Vr24) = g0(Vr21)/\ g1(Vr24) = g1(Vr21) + 1) \/
           
           (g0(Vr22) = g0(Vr21)/\ g1(Vr22) = g1(Vr21) - 1/\ g0(Vr23) = g0(Vr21)/\ g1(Vr23) = g1(Vr21) - 2/\ g0(Vr24) = g0(Vr21) - 1/\ g1(Vr24) = g1(Vr21)) \/
           
           (g0(Vr22) = g0(Vr21) + 1/\ g1(Vr22) = g1(Vr21)/\ g0(Vr23) = g0(Vr21) + 2/\ g1(Vr23) = g1(Vr21)/\ g0(Vr24) = g0(Vr21)/\ g1(Vr24) = g1(Vr21) - 1) \/
           
           (g0(Vr22) = g0(Vr21)/\ g1(Vr22) = g1(Vr21) + 1/\ g0(Vr23) = g0(Vr21)/\ g1(Vr23) = g1(Vr21) + 2/\ g0(Vr24) = g0(Vr21) + 1/\ g1(Vr24) = g1(Vr21));
           

constraint Vpb1=0;
constraint Vpb2=0;
constraint Vpg1=0;
constraint Vpg2=0;
constraint Vpy1=22;
constraint Vpy2=0;
constraint Vpr=23;
