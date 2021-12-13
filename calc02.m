function dxi = calc02(t,xi);
global r x0 v0 a0 A B C D;
if t == 0
    a = a0;
else
    a = (xi(2) - v0)/t;
end
dxi = A*r - B*xi - C*xi - D*a;