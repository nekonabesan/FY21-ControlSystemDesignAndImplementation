clear all
close all
global r x0 v0 a0 M Dx G0 Kp A B C D;
M = 0.5;
Dx = 16.05;
G0 = 18.39;
x0 = -0.2;
v0 = -1;
Kp = 5;
r = 0.2;
a0 = (G0*Kp*r - G0*Kp*x0 - Kp*v0)/M;
u0 = 0;
t0 = 0;
te = 2;



A = [(G0*Kp)/Dx; (G0*Kp)/M];
B = [(G0*Kp)/Dx, 0; (G0*Kp)/M, 0];
C = [0, 0; 0, Dx/M];
D = [M/Dx; 0];



[t,xi] = ode45('calc02', [t0, te], [x0; v0]);


figure; % グラフウィンドウを開く
plot(t, xi(:,1)); % ※ 4 開いたグラフウィンドウに，t に対する xi(:, 1) をプロットする
grid on;
xlabel('t(s)'); % グラフ横軸のラベル
ylabel('x(m)'); % グラフ縦軸のラベル

figure; % グラフウィンドウを開く
plot(t, xi(:,2)); % ※ 4 開いたグラフウィンドウに，t に対する xi(:, 1) をプロットする
grid on;
xlabel('t(s)'); % グラフ横軸のラベル
ylabel('v(m/s)'); % グラフ縦軸のラベル