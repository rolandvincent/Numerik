function [ E, result ] = CompositeRectangleRule_LeftEndPoint( f, n, a, b )
    h = (b - a) / n;
    total = 0;
    F = f;
    f = matlabFunction(f);
    for N=0:n-1
        total = total + f(a+h*N); % menghitung jumlah dari f(x<i>)+O(h) dengan i=1 sampai n
    end
    % menghitung error
    K2=matlabFunction(diff(F)); % mencari turunan pertama.
    fa = K2(a); % memasukkan nilai a ke turunan pertama fungsi
    fb = K2(b); % memasukkan nilai b ke turunan pertama fungsi
    if fa>fb % mencari yang terbesar
        ft=fa;
    else
        ft=fb;
    end
    E = h*abs(1/2*(b-a)*ft); % menghitung error dari left and right end point;
    result = h * total;
end

