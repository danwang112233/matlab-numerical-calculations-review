function ex17
a=[1,50,80,30,45,90,100];
af=ones(length(a),1);
for n= 1: length(a)
    if a(n) > 100
        af(n)=2
        break
    elseif a(n)<100 & a(n)> 60
            af(n)=1
    elseif a(n)<60
        af(n)=0
    end
end
af