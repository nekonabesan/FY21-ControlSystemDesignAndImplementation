%%----------------------------------------------%%
%% param t
%% result v
%%----------------------------------------------%%
function dxi = calcV(t, xi);
global A B;
if t < 1.5
    u = 0.2;
else
    u = 0;
end
dxi =  B*u - A*xi;