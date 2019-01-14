function p = ex21(a,b)
if nargin==1
    b=zeros(4,1);
elseif nargin==0
    error('empty input. check it again.')
end
a=a(:).';
b=b(:).';
na=length(a);
nb=length(b);
p1=[zeros(1,nb-na) a]
p2=[zeros(1,na-nb) b]
p=p1+p2;