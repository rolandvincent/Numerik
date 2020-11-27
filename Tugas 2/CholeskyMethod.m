function x = CholeskyMethod(A,b)
    [L, U] = CholeskyFactor(A);
    n = size(A,1);
    y = zeros(n,1);
    y(1) = b(1)/L(1,1);
    for i = 2:n,
        y(i) = (b(i)-L(i,1:i-1)*y(1:i-1))/L(i,i);
    end
    % Solve the upper triangular system L'x = y (back substitution)
    x = zeros(n,1);
    x(n) = y(n)/U(n,n);
    for i = n-1:-1:1,
        x(i) = (y(i)-U(i,i+1:n)*x(i+1:n))/U(i,i);
    end
end

