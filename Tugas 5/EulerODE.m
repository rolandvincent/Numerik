function y = EulerODE(f,x,y0)
    y = 0*x; % Pre-allocate
    y(1) = y0; 
    h = x(2)-x(1); 
    n = length(x);
    for i = 1:n-1,
        y(i+1) = y(i)+h*f(x(i),y(i));
        % y(2) = y(1)+0.1*f(x(1),y(1))
        % y(2) = 1/2+0.1*f(0.1,1/2)
        % y(2) = 1/2+0.1*(exp(-0.1)-1/2)/2
    end
end