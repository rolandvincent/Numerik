function [ result ] = CompositeRectangleRule_LeftEndPoint( f, n, a, b )
    h = (b - a) / n;
    total = 0;
    f = matlabFunction(f);
    for N=0:n-1
        total = total + f(a+h*N); % menghitung jumlah dari f(x<i>)+O(h) dengan i=1 sampai n
    end
    result = h * total;
end

