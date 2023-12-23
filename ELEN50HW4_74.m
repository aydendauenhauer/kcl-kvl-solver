% *************************************************************************
% clear work space and command window
% *************************************************************************

clear
clc

% *************************************************************************
% variables
% *************************************************************************

i1new = 0.032;

% *************************************************************************
% set symbolic symbols
% *************************************************************************

syms i1 v2 isc i1sc

% *************************************************************************
% system of equations
% *************************************************************************

eq1 = -100 + 2500*i1 + 625*(i1 + 0.001*v2) == 0;
eq2 = v2 == (6000/10000) * 5000*i1;
eq3 = isc == (5000*i1new) / 4000;

% *************************************************************************
% set equations and variables
% *************************************************************************

eqns = [eq1, eq2];
vars = [i1, v2];
eqns2 = [eq3];
vars2 = [isc];

% *************************************************************************
% set up coefficient matrix
% *************************************************************************
%[A, b] = equationsToMatrix (eqns, vars)
% *************************************************************************
% solve for unknow variables
% *************************************************************************
%V = inv(A) * b
% *************************************************************************
% solve for unknow variables
% *************************************************************************

result = solve(eqns, vars)
result2 = solve(eqns2, vars2)
