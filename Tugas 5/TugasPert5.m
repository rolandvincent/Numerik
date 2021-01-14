disp('  x       yEuler      yTaylor2  e_Euler e_Taylor2')
h = 0.05; 
x = 0:h:0.5;
% x = [0,0.1,0.2,0.3,0.4,0.5]
y0 = 1/2;
f = @(x,y)(x^2+y); 
fp = @(x,y)(2*x+x^2+y);
yEuler = EulerODE(f,x,y0);
%yEuler = [0.5,0.52024,0.52984,...]
y_exact = matlabFunction(dsolve('Dy = x^2 + y','y(0)=1/2','x'));
yTaylor2 = 0*x; 
yTaylor2(1) = y0;
for i = 1:length(x)-1,
    yTaylor2(i+1) = yTaylor2(i)+h*(f(x(i),yTaylor2(i))+(1/2)*h*fp(x(i),yTaylor2(i)));
end
for k = 1:length(x),
    x_coord = x(k); 
    yE = yEuler(k); 
    yEx = y_exact(x(k)); 
    yT = yTaylor2(k);
    e_Euler = (yEx-yE)/yEx*100;
    e_Taylor2 = (yEx-yT)/yEx*100;
    fprintf('%6.2f %11.6f %11.6f %6.2f %6.2f\n',x_coord,yE,yT,e_Euler,e_Taylor2)
end