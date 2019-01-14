function [x,n]=twostep(A,b,x0,eps,varargin)
if nargin<3
    disp('check your inputs again.')
elseif nargin == 3
    eps = 1e-6;
    M=200;
elseif nargin ==4
    M=200;
end
D=diag(diag(A));
L=-tril(A,-1);
U=-triu(A,1);
O=D-L;
P=D-U;
rh=O\b;
r=P\b;
xh=O\U*x0+rh;
x=P\L*xh+r;
n=1;
while(norm(x-x0)>=eps)
    x0=x;
    xh=O\U*x0+rh;
    x=P\L*xh+r;
    n=n+1;
    if n>M
        disp('too many iteration steps.')
        return
    end
end
