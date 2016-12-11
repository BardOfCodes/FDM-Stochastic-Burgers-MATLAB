% file handleing creation of matrice A and A^-1.
% calling file where constants are declared.

constants;

% making matrix A

A = zeros(nt,nx);
A(1,1) = 1;
A(nt,nx) = 1;

for i=2:1:nt-1
    A(i,i-1) = a;
    A(i,i) = b;
    A(i,i+1) = c;
end

% making matrix B which is inverse of A
 
 B = inv(A); 