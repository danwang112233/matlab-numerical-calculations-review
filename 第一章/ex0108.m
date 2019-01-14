function ex0108
a=[9,2,4,3,5,6,8,0];
min = a(1);
time = 0;
for i=1:length(a-1)
    if a(i) < a(1)
        min=a(i);
    end
     time=time+1;
end
min
time