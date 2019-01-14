function [x,n]=SOR(A,b,x0,w,eps,M)
if nargin <4
    disp('check it again.')
    return
elseif nargin == 4
    eps = 1e-6;
    M=200;
elseif nargin==5
    M=200;
end
if A~=A'
    disp('A非对称正定')
    return
end
if w>2 || w <0
    disp('w不在阈值内')
    return
end
D=diag(diag(A));
L=-tril(A,-1);
U=-triu(A,1);
C=D-w*L;
F=(1-w)*D+w*U;
r=w*(C\b);
x=C\F*x0+r;
n=1;
while(norm(x-x0)>=eps)
    x0=x;
    x=C\F*x0+r;
    n=n+1;
    if(n>M)
        disp('迭代次数过多')
        return
    end
end
