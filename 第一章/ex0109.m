function ex0109
a=[9,2,6,3,5,4,8,0];
min=a(1);
n =  1;
while (n<=length(a))
    if a(n) < min
        min=a(n);
    end
    n=n+1;
end
min
n-1