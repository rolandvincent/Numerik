function [ result ] = CompositeRectangleRule_MidEndPoint( f, n, a, b )
    h = (b - a) / n;
    total = 0;
    f = matlabFunction(f);
    for N=0:n-1
        % menghitung jumlah dari f(m<i>)+O(h^2) dengan i=1 sampai n
        % dan mi=1/2(x<i+1>)+x<i>)
        total = total + f(a+h*N+h/2); 
    end
    result = h * total;
end
