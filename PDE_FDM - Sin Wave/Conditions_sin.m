%File for Initial Conditions and boundary condition.

%calling previous file which calls previous file and so on...

MatAB_sin;

%initial condition.
% at t=t0, U(x,t0) =  Ut0(x)
% Ut0(x) = 100*sin(2*pi*x)

for i=1:1:nx
    x =(x0 +(i)*dx);
    U(1,i) = 100*sin(2*pi*x);
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

