function dxi = calc03_02(t, xi);
global Kp r d A Bu Bd;
u = Kp * (r - xi(2))
dxi =  A*xi + Bu*u + Bd*d;