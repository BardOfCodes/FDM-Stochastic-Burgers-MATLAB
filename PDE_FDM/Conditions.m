%File for Initial Conditions and boundary condition.

%calling previous file which calls previous file and so on...

MatAB;

%initial condition.
% at t=t0, U(x,t0) =  Ut0(x)
% Ut0(x) = 100*2*x/(1+x^2)

for i=1:1:nx
    x =(x0 +(i)*dx);
    U(1,i) = 100*(2*x/(1+x^2));
end

%boundary conditions.
% at x=xo, U(x0,t) =  Ux0(t);
% at x=x1, U(x1,t) =  Ux1(t);
% Ux0(t) = 0 ; Ux1 = 100;

for i=1:1:nt
    %for x=x0
    U(i,1) = 0;
    %for x=x1
    U(i,nx) = 100;
end

