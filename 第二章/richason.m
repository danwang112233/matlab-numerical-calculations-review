function [x,n]=richason(A,b,x0,eps,m)
if nargin==3
    eps=1e-06;
    m=200;
elseif nargin == 4
    m=200;
end
I = eye(size(A));
x1=x0;
x=(I-A)*x1+b;
n=1;
while(norm(x-x1)>eps)
    x1=x;
    x=(I-A)*x1+b;
    n=n+1;
    if(n>=m)
        disp('迭代次数超过允许范围');
        return
    end
end

    