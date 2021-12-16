function dxi = calc04(t,xi);
global d r z0 x0 v0 a0 M Dx G0 KP A Br Bd C;
if t == 0
    a = a0;
else
    a = (G0*xi(3) - G0*KP*xi(2) - Dx*xi(1) + G0*KP*r + G0*d)/M;
end
dxi = A*xi + Br*r + Bd*d + C*a;