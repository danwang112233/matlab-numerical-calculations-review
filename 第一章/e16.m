function e16
r=80;
M=160;
p=exp(-r);
a=0;
for i=1:M
    p=p*r/i;
    a=a+p;
end
a
b=0
for i=0:M
    b=b+r^i*p/factorial(i);
end
b



    