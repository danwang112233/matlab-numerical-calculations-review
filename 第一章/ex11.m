function ex11
t=0:pi/50:6*pi;
x=exp(-0.1*t).*cos(t);
y=exp(-0.1*t).*sin(t);
z=t;
subplot (2,2,1);
plot3(x,y,z),grid on;
title('(x(t),y(t),t)的三维图');
subplot (2,2,2);
plot3(x,y,z),grid on,view([0,0,1]);
title('在位置【0,0,1】观察(x(t),y(t),t)的三维图');
subplot (2,2,3);
plot3(z,x,y),grid on;
title('(t,x(t),y(t))的三维图');
subplot (2,2,4);
plot3(z,x,y),grid on,view([0,-4,0]);
title('在位置【0,-4,0】观察(x(t),y(t),t)的三维图');

