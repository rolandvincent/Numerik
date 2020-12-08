function [L, U] = CholeskyFactor(A)
    n = length(A);
    % n = 3
    L = zeros(n);
    % L = [0,0,0;0,0,0;0,0,0]
    for i=1:n
        L(i,i) = sqrt(A(i,i)-L(i,1:i-1)*L(i,1:i-1)');
        % Ketika i = 1
        % L(1,1) = sqrt(1-[0]*[0]')
        % L(1,1) = 1
        % Ketika i = 2
        % L(2,2) = sqrt(10-[1]*[1]')
        % L(2,2) = sqrt(9)
        % L(2,2) = 3
        % Ketika i = 3
        % L(3,3) = sqrt(24-[-2,2]*[-2,2]')
        % L(3,3) = sqrt(24-(8))
        % L(3,3) = sqrt(16)
        % L(3,3) = 4
        for j=i+1:n
            L(j,i) = (A(j,i)-L(j,1:i-1)*L(i,1:i-1)') / L(i,i);
            % Ketika i = 1 dan j = 2
            % L(2,1) = (1-[0]*[0]')/1
            % L(2,1) = 1
            % Ketika i = 1 dan j = 3
            % L(3,1) = (-2-[0]*[0]')/1
            % L(3,1) = -2
            % Ketika i = 2 dan j = 3
            % L(3,2) = (4-[-2]*[1]')/3
            % L(3,2) = 2
        end
    end
    U = L';
end