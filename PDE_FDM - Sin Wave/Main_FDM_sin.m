% File for solving the Heat Equation.

% calling previous file which calls previous file and so on...

Conditions_sin;

for i=1:1:nt-1
    
    % making matrix D in AU=D
    D(1) = 0;
    D(nx) = 0;
    for j=2:1:nx-1
            D(j) = (-a)*U(i,j-1) + (1/dt +a*2)*U(i,j) - c*U(i,j+1);
    end
        
    
    %making matrix Ut which is inv(A)* D
    %as inv(A) * A U = inv(A) *D

    Ut = B * D;
    
    %setting values of Ut to U(x,t+1)
    
    for j=2:1:nx-1
        U(i+1,j) = Ut(j);
    end
    
end

% making the surface
%for i=1:1:nt
%    for j=1:1:nx
%        T(t0+(i-1)*dt,x0+(i-1)*dx) = U(i,j);
%    end
%end
x = linspace(0,1,20);
t = linspace(0,1,20);
surf(x,t,U);
title('Surface plot of Heat equation solution');
xlabel('Distance x');
ylabel('Time t');



