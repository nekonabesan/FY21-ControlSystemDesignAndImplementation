function dxi = calc02_03(t, xi);
global Kp r A B;
u = Kp * (r - xi(2))
dxi =  A*u - B*xi;