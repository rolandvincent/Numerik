F = sym('exp(-x/2)+log(x+2)-2');
[r,n] = Secant_Function(F,0,1,1e-6,20);
disp('maka,');
disp('f(x)=exp(-x/2)+log(x+2)-2')
fprintf('r=%f\n',r); % Print float, r adalah salah satu akar dari persamaan
fprintf('n=%d\n',n); % Print integer, n adalah jumlah loop sampai mendapatkan hasil r