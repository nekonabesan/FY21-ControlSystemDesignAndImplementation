clear all
close all
global A B K;
x0 = 0.1;
th0 = 0.3491;
dx0 = 0;
dth0 = 0;
u0 = 0;
M = 0.5;
m = 0.0529;
l = 0.2280;
I = 0.004481;
g = 9.8;
Dx = 16.05;
Dt = 0.00075;
G0 = 18.39;
r = 1;
K = [0; 0; 0; 0];
N = 0;

t0 = 0;
te = 10;

a1 = (-1 * (m*l)^2 * g)/((M + m) * I + M*m*l^2);
a2 = ((-1 * (m * l^2 + I)) * Dx)/((M + m) * I + M * m * l^2);
a3 = (m * l * Dt)/((M + m) * I + M * m * l^2);
a4 = ((m * l^2 + I) * G0)/((M + m) * I + M * m * l^2);
a5 = ((M + m) * m * g * l)/((M + m) * I + M * m * l^2);
a6 = (m * l * Dx)/((M + m) * I + M * m * l^2);
a7 = (-1 * (M + m) * Dt)/((M + m) * I + M * m * l^2);
a8 = (-1 * m * l * G0)/((M + m) * I + M * m * l^2);

q1 = 100;
q2 = 1;
q3 = 1;
q4 = 1;

A = [0,  0,  1,  0; 
     0,  0,  0,  1; 
     0, a1, a2, a3; 
     0, a5, a6, a7];
B = [0; 0; a4; a8];
Q = diag([q1, q2, q3, q4]);
R = r;

K = lqr(A, B, Q, R);
Eig = eig(A - B * K);
disp(Eig);

disp(K);

[t,xi] = ode45('calc05', [t0, te], [x0; th0; dx0; dth0]);


figure; % グラフウィンドウを開く
plot(t, xi(:,1)); % ※ 4 開いたグラフウィンドウに，t に対する xi(:, 1) をプロットする
grid on;
xlabel('t(s)'); % グラフ横軸のラベル
ylabel('x(m)'); % グラフ縦軸のラベル

figure; % グラフウィンドウを開く
plot(t, xi(:,2)); % ※ 4 開いたグラフウィンドウに，t に対する xi(:, 1) をプロットする
grid on;
xlabel('t(s)'); % グラフ横軸のラベル
ylabel('θ(rad)'); % グラフ縦軸のラベル

figure; % グラフウィンドウを開く
plot(t, xi(:,3)); % ※ 4 開いたグラフウィンドウに，t に対する xi(:, 1) をプロットする
grid on;
xlabel('t(s)'); % グラフ横軸のラベル
ylabel('dx/dt(m/s)'); % グラフ縦軸のラベル

figure; % グラフウィンドウを開く
plot(t, xi(:,4)); % ※ 4 開いたグラフウィンドウに，t に対する xi(:, 1) をプロットする
grid on;
xlabel('t(s)'); % グラフ横軸のラベル
ylabel('dθ/dt(m/s)'); % グラフ縦軸のラベル