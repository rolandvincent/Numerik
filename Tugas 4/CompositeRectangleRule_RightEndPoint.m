function [ result ] = CompositeRectangleRule_RightEndPoint( f, n, a, b )
    h = (b - a) / n;
    total = 0;
    f = matlabFunction(f);
    for N=1:n
        total = total + f(a+h*N); % menghitung jumlah dari f(x<i>)+O(h) dengan i=2 sampai n+1
    end
    result = h * total;
end
