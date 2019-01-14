function c= ex0110(n)
tic
a=factorial(n);
toc
tic
b =1;
for i=[1:n+1]
    b=b*i;
end
toc
c=[a,b];
