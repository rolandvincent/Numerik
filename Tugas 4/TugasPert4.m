f = sym('(x+1)*exp(x)');
a=0.4;
b=1;
n=8;
h = (b - a) / n;
disp('Composite Rectangle Rule');
disp('Hasil integral dari f(x)=(x+1)*exp(x) dengan batas bawah 0.4 dan batas atas 1');
disp('Left End Point');
[result] = CompositeRectangleRule_LeftEndPoint(f,n,a,b);
disp(result);
disp('Right End Point');
[result] = CompositeRectangleRule_RightEndPoint(f,n,a,b);
disp(result);
% =========== ERROR LEFT AND RIGHT POINT =========== %
disp('Dengan error Left dan Right End Point sekitar');
% menghitung error
K2=matlabFunction(diff(f)); % mencari turunan pertama.
fa = K2(a); % memasukkan nilai a ke turunan pertama fungsi
fb = K2(b); % memasukkan nilai b ke turunan pertama fungsi
if fa>fb % mencari yang terbesar
    ft=fa;
else
    ft=fb;
end
E = h*(1/2*(b-a)*ft); % menghitung error dari left and right end point;
disp(E);
disp('Mid End Point');
[result] = CompositeRectangleRule_MidEndPoint(f,n,a,b);
disp(result);
% =========== ERROR MID POINT  =========== %
disp('Dengan error Mid End Point sekitar');
% menghitung error
K2=matlabFunction(diff(diff(f))); % mencari turunan kedua.
fa = K2(a); % memasukkan nilai a ke turunan kedua fungsi
fb = K2(b); % memasukkan nilai b ke turunan kedua fungsi
if fa>fb % mencari yang terbesar
    ft=fa;
else
    ft=fb;
end
E = h^2*(1/2*(b-a)*ft); % menghitung error dari mid end point;
disp(E);
