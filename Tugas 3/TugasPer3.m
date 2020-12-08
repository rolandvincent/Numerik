F = sym('exp(-x/2)+log(x+2)-2');
[r,n] = Secant_Function(F,0,1,1e-6,20);
disp(r);
disp(n);