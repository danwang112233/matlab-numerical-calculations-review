function f=Aitken(x,y,x0)
syms t;
if length(x)==length(y)
    n=length(x);
else disp('check the dimension.');
    return;
end
y1(1:n)=t;
for i=1:n-1
    for j=i+1:n
        y1(j)=y(j)*(t-x(j-1))/(x(i)-x(j-1))-y()