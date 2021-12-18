%%----------------------------------------------%%
%% param t
%% result u
%%----------------------------------------------%%
function dxi = calc01(t, xi);
global u A B;
if t < 1.5
    u = 0.2;
else
    u = 0;
end
dxi =  A*u - B*xi;