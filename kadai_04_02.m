clear all
close all
global Kp r d A Br Bd;
% 固定パラメータの定義
M = 0.5;
Dx = 16.05;
G0 = 18.39;
x0 = -0.2;
KI = 50;
Kp = 10;
r = 0.2;
d = 0.2;
v0 = -1;
z0 = 0;
t0 = 0;
te = 2;

% 行列の定義
A  = [-1*(Dx/M), -1*(G0*Kp)/M, G0/M; 1, 0, 0; 0, -1*KI, 0];
Br = [(G0*Kp)/M; 0; KI];
Bd = [G0/M; 0; 0];

[t,xi] = ode45('calc04_02', [t0, te], [v0; x0; z0]);

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