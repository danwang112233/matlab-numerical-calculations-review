function f=lagrange(x,y,x0)
syms t;
if length(x)==length(y)
    n=length(x);
else disp('check your inputs again. the dimensions are not same.')
    return
end
f=0.0;
for i=1:n
    l=y(i);
    m=x(i);
    for j=1:i-1
        l=l*(t-x(j))/(m-x(j));
    end
    for j=i+1:n
        l=l*(t-x(j))/(m-x(j));
    end
    f=f+ l;
end
simplify(f);

if i==n
    if nargin == 3
        f=subs(f,'t',x0);
        f=vpa(f,6);
    else 
        f=collect(f);
        f=vpa(f,6);
    end
end
end
        