clear all
close all
global d r x0 v0 z0 a0 M Dx G0 KP A Br Bd C;
M = 0.5;
Dx = 16.05;
G0 = 18.39;
KI = 50;
KP = 10;
x0 = -0.2;
v0 = -1;
z0 = 0;
r = 0.2;
d = 0;
a0 = (G0*z0 - G0*KP*x0 - Dx*v0 + G0*KP*r + G0*d)/M;
t0 = 0;
te = 2;



A  = [-1*(Dx/M), -1*((G0*KP)/M), G0/M; 0, -1*((G0*KP)/Dx), G0/Dx; 0, -1*KI, 0];
Br = [(G0*KP)/M; (G0*KP)/Dx; KI];
Bd = [G0/M; G0/Dx; 0];
C  = [0; -1*(M/Dx); 0];


[t,xi] = ode45('calc04', [t0, te], [v0; x0; z0]);


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