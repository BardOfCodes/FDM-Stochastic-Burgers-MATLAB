%PDE1: MATLAB script M-file that solves and plots
%solutions to the PDE stored in eqn1.m
m = 0;
%NOTE: m=0 specifies no symmetry in the problem. Taking
%m=1 specifies cylindrical symmetry, while m=2 specifies
%spherical symmetry.
%
%Define the solution mesh
x = linspace(0,1,20);
t = linspace(0,1,20);
%Solve the PDE
u = pdepe(m,@eqn1,@initial1,@bc1,x,t);
%Plot solution
surf(x,t,u);
title('Surface plot of solution');
xlabel('Distance x');
ylabel('Time t');