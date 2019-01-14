function [x,n]=SSOR(A,b,x0,w,eps,M)
if nargin <4
    disp('plz check it again.')
elseif nargin==4
    eps=1e-6;
    M=200;
elseif nargin==5
    M=200;
end
D=diag(diag(A));
L=-tril(A,-1);
U=-triu(A,1);
O=D-w*L;
P=D-w*U;
rh=O\(w*b);
r=P\(w*b);
xh=O\(w*U+(1-w)*D)*x0+rh;
x=P\(w*L*x0+(1-w)*D*xh)+r;
n=1;
while(norm(x-x0)>=eps)
    x0=x;
    xh=O\(w*U+(1-w)*D)*x0+rh;
    x=P\(w*L*x0+(1-w)*D*xh)+r;
    n=n+1;
    if(n>M)
        disp('too many iteration times ')
    return
    end
end
