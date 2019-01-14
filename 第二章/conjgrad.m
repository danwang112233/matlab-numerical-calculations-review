function [x,n]=conjgrad(A,b,x0,eps)
if nargin <3
    disp('check it again')
elseif nargin ==3
    eps=1e-6;
end
r=b-A*x0;
p1=r;
d=dot(r,r)/dot(p1,A*p1);
x=x0+d*p1;
r2=r-d*A*p1;
f=dot(r2,r2)/dot(r,r);
p2=r2+f*p1;
n=1;
for i=[1:rank(A)-1]
    x0=x;
    
p1=p2;
r=r2;
d=dot(r,r)/dot(p1,A*p1);
x=x0+d*p1;
r2=r-d*A*p1;
f=dot(r2,r2)/dot(r,r);
p2=r2+f*p1;
n=n+1;
end
