function dxi = circ2(t,xi);
global u A B;
if t < 1.5
    u = 0.2;
else
    u = 0;
end
dxi = A*u - B*xi;