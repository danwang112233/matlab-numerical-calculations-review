function ex18
a=[9,2,4,3,5,6,8,0];
min=inf;
time =0;
for n=1:length(a)
    if a(n)<min
        min=a(n);
        
    end
    time=time+1;
end
time
min
