function dxi = calc02(t,xi);
global r a0 M Dx G0 Kp A B C D;
if t == 0
    a = a0;
else
    a = (G0*Kp*r - G0*Kp*xi(1) - Dx*xi(2))/M;
end
dxi = A*r - B*xi - C*xi - D*a;