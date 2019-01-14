function x=ex0114(t,D)
%global D;
t(find(t==0))=eps;
x=sin(pi*t/D)/(pi*t/D);
