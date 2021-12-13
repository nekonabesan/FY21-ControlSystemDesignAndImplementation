function dxi = calc03(t,xi);
global d r x0 v0 a0 M Dx G0 KP A B C D E;
if t == 0
    a = a0;
else
    a = (G0*KP*r - G0*KP*xi(1) + G0*d - Dx*xi(2))/M;
end
dxi = A*r - B*xi + C*d - D*xi - E*a;