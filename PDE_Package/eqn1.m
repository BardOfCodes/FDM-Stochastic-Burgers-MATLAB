function [c,b,s] = eqn1(x,t,u,DuDx)
%EQN1: MATLAB function M-file that specifies
%a PDE in time and one space dimension.
c = 1;
b = 0.25*DuDx;
s = 0;
