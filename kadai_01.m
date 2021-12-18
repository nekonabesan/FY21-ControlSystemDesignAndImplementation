clear all
close all
global u A B;
M = 0.5;
Dx = 16.05;
G0 = 18.39;
x0 = -0.2;
v0 = -1;
u0 = 0.2;

t0 = 0;
te = 2;

x = x0;
u = u0;

A = [G0/M; 0];
B = [(Dx/M), 0; -1, 0];

[t,xi] = ode45('calc01', [t0, te], [v0; x0]);



figure; % グラフウィンドウを開く
plot(t, xi(:,1)); % ※ 4 開いたグラフウィンドウに，t に対する xi(:, 1) をプロットする
grid on;
xlabel('t(s)'); % グラフ横軸のラベル
ylabel('v(m/s)'); % グラフ縦軸のラベル

figure; % グラフウィンドウを開く
plot(t, xi(:,2)); % ※ 4 開いたグラフウィンドウに，t に対する xi(:, 1) をプロットする
grid on;
xlabel('t(s)'); % グラフ横軸のラベル
ylabel('x(m)'); % グラフ縦軸のラベル