function [L, U] = CholeskyFactor(A)
    n = length(A);
    % n = 3
    L = zeros(n);
    % L = [0,0,0;0,0,0;0,0,0]
    for i=1:n
        L(i,i) = sqrt(A(i,i)-L(i,1:i-1)*L(i,1:i-1)');
        for j=i+1:n
            L(j,i) = (A(j,i)-L(j,1:i-1)*L(i,1:i-1)') / L(i,i);
        end
    end
    U = L';
end