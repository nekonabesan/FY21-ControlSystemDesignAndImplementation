function dxi = calc05(t,xi);
global A B Q R K;
dxi = A*xi + B*(-1 * K) * xi;