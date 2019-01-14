function [x,n]=jacobi(A,b,x0,eps,varargin)
if nargin<3
    disp('check it again.')
elseif nargin == 3
    eps=1e-6;
    M=200;
elseif nargin==5
    M=varargin{1};
end
D=diag(diag(A));
L=-tril(A,-1);
U=-triu(A,1);
B=inv(D)*(L+U);
r=inv(D)*b;
x=B*x0+r;
n=1;
while(norm(x0-x)>=eps)
    x0=x;
    x=B*x0+r;
    n=n+1;
    if(n>M)
        disp('迭代次数过多');
        return
    end
end