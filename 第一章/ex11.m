function ex11
t=0:pi/50:6*pi;
x=exp(-0.1*t).*cos(t);
y=exp(-0.1*t).*sin(t);
z=t;
subplot (2,2,1);
plot3(x,y,z),grid on;
title('(x(t),y(t),t)����άͼ');
subplot (2,2,2);
plot3(x,y,z),grid on,view([0,0,1]);
title('��λ�á�0,0,1���۲�(x(t),y(t),t)����άͼ');
subplot (2,2,3);
plot3(z,x,y),grid on;
title('(t,x(t),y(t))����άͼ');
subplot (2,2,4);
plot3(z,x,y),grid on,view([0,-4,0]);
title('��λ�á�0,-4,0���۲�(x(t),y(t),t)����άͼ');

