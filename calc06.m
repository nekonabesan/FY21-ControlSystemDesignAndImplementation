function dxi = calc06(t,xi);
global A B K;
dxi = A*xi + B*(-1 * K) * xi;