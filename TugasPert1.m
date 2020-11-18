clear;
n = 6;
m = zeros(n,n);
for x=1:n,
    for y=1:n
        if x==y
            m(x,y) = x;
        elseif x==y+2
            m(x,y) = 2;
        elseif x+2==y
            m(x,y) = -1;
        end
    end
end
disp(m);