function dxi = calc04_02(t, xi);
global Kp r d A Br Bd;
u = xi(3) + Kp * (r - xi(2))
dxi =  A*xi + Br*r + Bd*d;