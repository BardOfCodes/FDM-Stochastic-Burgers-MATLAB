%Heat equation solution using FDM.
%First,constants.m file has Constants.
% inputs by user -
x0 = 0;
x1 = 1;
t0 = 0;
t1 = 1;
dx = 1 / 20;
dt = 1 / 20;
alpha = 0.0625;
% Constants to be calculated -

nx = (x1-x0)/dx;
nt = (t1-t0)/dt;

a = -alpha/(2*(dx^2));
b = 1/dt + alpha/(dx^2);
c = -alpha/(2*(dx^2));


%matrices.

U = zeros(nt,nx);
D = zeros(nx);
Ut = zeros(nx);
