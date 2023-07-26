% Declare Symbolic Variables
syms x a;
% Declare Equations here:
fx = 3*x^3+9*x^2+7*x+9;
gx = x^2+2;
zx = (4/(5*×))*a;
% Solution for Question 1
solAns = subs (fx, x, gx) / (fx*zx) ;
% Solution for Question 2
x = 15;
solAns15=subs (solAns, x)