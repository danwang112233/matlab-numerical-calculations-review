function result=ex0111(n)
if n<=1
    result =1;
else result = n*ex0111(n-1);
end
