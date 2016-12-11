# FDM-Stochastic-Burgers-MATLAB

This repository contain the code for Finite difference solution of the Stochastic Burger's equation.
We start with solving the heat equation and then add the approximation for the non-linear term.

The finite differences have been approximated using Crank-nicolson method. Initial conditions taken are -

For $\alpha = 0.01$\\,
$x_i =0, x_f =1$, $t_i = 0 , t_f = 1$,\\
Initial condition = $u(x,0) = u(x) = sin(2 \times pi \times x )$,\\
Boundary conditions = $u(x_i ,t) = u(x_f ,t) = 0.$

## Simulation Results

The function has been simulated at various noise levels. 

![without noise](../image/SBE_without_noise.png)

![with noise](../image/SBE_1_2.png)

## For more information

Please visit this [page](www.google.com)
