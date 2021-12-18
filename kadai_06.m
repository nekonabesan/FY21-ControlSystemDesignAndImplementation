clear all
close all
global A B K;
th0 = 0.001;
dth0 = 0;
M = 0.5;
m = 0.0529;
l = 0.2280;
I = 0.004481;
g = 9.8;
r = 1;
K = [0; 0];
N = 0;

t0 = 0;
te = 10;

a1 = (m * g * l)/(I + m * l^2);
a2 = 1/(I + m * l^2);

q1 = 1;
q2 = 1;

A = [0, 1; 
     a1, 0];
B = [0; a2];
Q = diag([q1, q2]);
R = r;

K = lqr(A, B, Q, R);
Eig = eig(A - B * K);
disp(Eig);

[t,xi] = ode45('calc05', [t0, te], [th0; dth0]);


figure; % グラフウィンドウを開く
plot(t, xi(:,1)); % ※ 4 開いたグラフウィンドウに，t に対する xi(:, 1) をプロットする
grid on;
xlabel('t(s)'); % グラフ横軸のラベル
ylabel('θ(rad)'); % グラフ縦軸のラベル

figure; % グラフウィンドウを開く
plot(t, xi(:,2)); % ※ 4 開いたグラフウィンドウに，t に対する xi(:, 1) をプロットする
grid on;
xlabel('t(s)'); % グラフ横軸のラベル
ylabel('dθ/dt(rad/s)'); % グラフ縦軸のラベル