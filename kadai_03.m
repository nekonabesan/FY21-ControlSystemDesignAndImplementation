clear all
close all
global d r x0 v0 a0 M Dx G0 KP A B C D E;
M = 0.5;
Dx = 16.05;
G0 = 18.39;
x0 = -0.2;
v0 = -1;
KP = 5;
r = 0.2;
d = 0.2;
a0 = (G0*KP*r - G0*KP*x0 + G0*d - Dx*v0)/M;
t0 = 0;
te = 2;



A = [(G0*KP)/Dx; (G0*KP)/M];
B = [(G0*KP)/Dx, 0; (G0*KP)/M, 0];
C = [G0/Dx; G0/M];
D = [0, 0; 0, Dx/M];
E = [M/Dx; 0];


[t,xi] = ode45('calc03', [t0, te], [x0; v0]);


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