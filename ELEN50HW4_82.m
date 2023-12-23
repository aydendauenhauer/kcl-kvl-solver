% *************************************************************************
% clear work space and command window
% *************************************************************************

clear
clc

% *************************************************************************
% variables
% *************************************************************************



% *************************************************************************
% set symbolic symbols
% *************************************************************************

syms i1 i2 i3

% *************************************************************************
% system of equations
% *************************************************************************

eq1 = 2.4*i1 + 4.8*(i1-i2) - 60 == 0;
eq2 = -4.8*(i1-i2) + 1.6*i3 + 5*i3 + 1.8*i3 == 0;
eq3 = i2 - i3 == 15;

% *************************************************************************
% set equations and variables
% *************************************************************************

eqns = [eq1, eq2, eq3];
vars = [i1, i2, i3];

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

