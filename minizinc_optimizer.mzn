include "globals.mzn";

int: n=6; %number of elements in the universe
int: length = 6; %string lengths
int: upperLimit = 2000;

array[1..n] of var 0..upperLimit: Keys;

constraint Keys[1]=0;
constraint increasing(Keys);

%for n=6!
constraint alldifferent([a*Keys[1]+b*Keys[2]+c*Keys[3]+d*Keys[4]+e*Keys[5]+f*Keys[6] | a in 0..length, b in 0..length, c in 0..length, d in 0..length, e in 0..length, f in 0..length, where a+b+c+d+e+f=length]);

solve minimize Keys[n];