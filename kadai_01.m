clear all
close all
global u A B;
M = 0.5;
Dx = 16.05;
G0 = 18.39;
r = 0.2;
KP = 5.0;
x0 = -0.2;
v0 = -1;
u0 = 0.2;
t0 = 0;
a0 = (G0 * u0)/(M + (Dx * t0));
te = 2;

x = x0;
a = a0;
u = u0;

A = [0; (G0/M)];
B = [0, 0; 0, (Dx/M)];

[t,xi] = ode45('calcV', [t0, te], [u0; v0]);



figure; % グラフウィンドウを開く
plot(t, xi(:,1)); % ※ 4 開いたグラフウィンドウに，t に対する xi(:, 1) をプロットする
grid on;
xlabel('t(s)'); % グラフ横軸のラベル
ylabel('v(m/s)'); % グラフ縦軸のラベル

figure; % グラフウィンドウを開く
plot(t, xi(:,2)); % ※ 4 開いたグラフウィンドウに，t に対する xi(:, 1) をプロットする
grid on;
xlabel('t(s)'); % グラフ横軸のラベル
ylabel('a(m/s^2)'); % グラフ縦軸のラベル