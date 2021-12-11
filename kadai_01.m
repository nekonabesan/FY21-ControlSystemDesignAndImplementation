clear all
close all
global M Dx G0 A B;
M = 0.5;
Dx = 16.05;
G0 = 18.39;
x0 = -0.2;
v0 = -1;
u0 = 0.2;
t0 = 0;
a0 = (G0 * u0)/(M + (Dx * t0));
t0 = 0;
te = 2.0;

A = [Dx/M];
B = [G0/M];



[t,xi] = ode45('calcV', [t0, te], [v0]);

figure; % グラフウィンドウを開く
plot(t, xi(:,1)); % ※ 4 開いたグラフウィンドウに，t に対する xi(:, 1) をプロットする
grid on;
xlabel('t(s)'); % グラフ横軸のラベル
ylabel('a(m/s^2)'); % グラフ縦軸のラベル