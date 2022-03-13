clear all
close all
global Kp r d A Bu Bd;
% 固定パラメータの定義
M = 0.5;
Dx = 16.05;
G0 = 18.39;
x0 = -0.2;
Kp = 5;
r = 0.2;
d = 0.2;
v0 = -1;
t0 = 0;
te = 2;

% 行列の定義
A  = [-1*(Dx/M), 0; 1, 0];
Bu = [G0/M; 0];
Bd = [G0/M; 0];

[t,xi] = ode45('calc03_02', [t0, te], [v0; x0]);

% 速度vの描画
figure;
plot(t, xi(:,1));
grid on;
xlabel('t(s)');
ylabel('v(m/s)');
% 変位xの描画
figure;
plot(t, xi(:,2));
grid on;
xlabel('t(s)');
ylabel('x(m)');