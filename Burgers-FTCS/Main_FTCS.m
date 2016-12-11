%Explicit Scheme Burgers Eqation.
% FTCS Finite Difference


%The constants -
% inputs by user -
x0 = 0;
x1 = 1;
t0 = 0;
t1 = 1;
dx = 1 / 20;
dt = 1 / 2000;
alpha = 1;
% Constants to be calculated -

nx = (x1-x0)/dx;
nt = (t1-t0)/dt;

%a = -alpha/(2*(dx^2));
%b = 1/dt + alpha/(dx^2);
%c = -alpha/(2*(dx^2));


%matrices.

U = zeros(nt,nx);
%D = zeros(nx);
%Ut = zeros(nx);



%CONDITIONS
%initial condition.
% at t=t0, U(x,t0) =  Ut0(x)
% Ut0(x) = 100*sin(2*pi*x)

for i=1:1:nx
    x =(x0 +(i)*dx);
    U(1,i) = sin(2*pi*x);
end

%boundary conditions.
% at x=xo, U(x0,t) =  Ux0(t);
% at x=x1, U(x1,t) =  Ux1(t);
% Ux0(t) = 0 ; Ux1 = 0;

for i=1:1:nt
    %for x=x0
    U(i,1) = 0;
    %for x=x1
    U(i,nx) = 0;
end

%FTCS IMPLEMENTATION

for i=1:1:nt-1
    for j=2:1:nx-1
        U(i+1,j)=U(i,j) + dt*(-U(i,j)*(U(i,j+1)-U(i,j-1))/(2*dx) + alpha*(U(i,j-1)-2*U(i,j)+U(i,j+1))/(dx^2) );
    end
end


%THE GRAPH
x = linspace(0,1,20);
t = linspace(0,1,2000);
surf(x,t,U);
title('Surface plot of solution');
xlabel('Distance x');
ylabel('Time t');


