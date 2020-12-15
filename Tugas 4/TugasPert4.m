f = sym('(x+1)*exp(x)');
a=0.4;
b=1;
n=8;
disp('Composite Rectangle Rule');
disp('Hasil integral dari f(x)=(x+1)*exp(x) dengan batas bawah 0.4 dan batas atas 1');
disp('Left End Point');
[E, result] = CompositeRectangleRule_LeftEndPoint(f,n,a,b);
disp(result);
disp('Dengan error Right End Point sekitar');
disp(E);
disp('Right End Point');
[E, result] = CompositeRectangleRule_RightEndPoint(f,n,a,b);
disp(result);
<<<<<<< HEAD
disp('Dengan error Left End Point sekitar');
=======
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
>>>>>>> 81a2f4e300e6967344013db341463094d1f1a7cf
disp(E);
disp('Mid End Point');
[E, result] = CompositeRectangleRule_MidEndPoint(f,n,a,b);
disp(result);
disp('Dengan error Mid End Point sekitar');
disp(E);
