%making plot at t=0.1
Ur1x = zeros(nx);
Ur2x = zeros(nx);
Ur3x = zeros(nx);
Ur0x = zeros(nx);
for i=1:1:20
    Ur1x(i)=Ur1(15,i);
    Ur2x(i)=Ur2(15,i);
    Ur3x(i)=Ur3(15,i);
    Ur0x(i)=Ur0(15,i);
end
plot(x,Ur1x,'r:',x,Ur2x,'g:',x,Ur3x,'b:',x,Ur0x,'k');
title('exponential function')
xlabel('Distance x (at t = 0.75)')
ylabel('Solution Values')
legend('Stochastic Solution ','Location','SouthEast')