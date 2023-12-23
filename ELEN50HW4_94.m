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

syms v1 v2 v3

% *************************************************************************
% system of equations
% *************************************************************************

eq1 = ((v1 - v2)/5) + (v1/40) + ((v1 - v3)/10) == 0;
eq2 = -((v1-v2)/5) + (v2/15) - 6 == 0;
eq3 = (v3/30) - ((v1-v3)/10) + 6 == 0;

% *************************************************************************
% set equations and variables
% *************************************************************************

eqns = [eq1, eq2, eq3];
vars = [v1, v2, v3];

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
