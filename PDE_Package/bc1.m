function [pl,ql,pr,qr] = bc1(xl,ul,xr,ur,t)
%BC1: MATLAB function M-file that specifies boundary conditions
%for a PDE in time and one space dimension.
pl = ul;
ql = 0;
pr = ur-100;
qr = 0;
