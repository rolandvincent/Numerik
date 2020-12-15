function [ E, result ] = CompositeRectangleRule_MidEndPoint( f, n, a, b )
    h = (b - a) / n;
    total = 0;
    F=f;
    f = matlabFunction(f);
    for N=0:n-1
        % menghitung jumlah dari f(m<i>)+O(h^2) dengan i=1 sampai n
        % dan mi=1/2(x<i+1>)+x<i>)
        total = total + f(a+h*N+h/2); 
    end
    % menghitung error
    K2=matlabFunction(diff(diff(F))); % mencari turunan kedua.
    fa = K2(a); % memasukkan nilai a ke turunan kedua fungsi
    fb = K2(b); % memasukkan nilai b ke turunan kedua fungsi
    if fa>fb % mencari yang terbesar
        ft=fa;
    else
        ft=fb;
    end
    E = h^2*(1/24*(b-a)*ft); % menghitung error dari mid end point;
    result = h * total;
end
