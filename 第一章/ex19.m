function ex19
a=[9,2,4,3,5,6,8,0];
n=1;
min=inf;
while n<=length(a)
    if a(n)< min
        min=a(n);
    end
    n=n+1;
end
min