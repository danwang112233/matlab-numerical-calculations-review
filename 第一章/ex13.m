function ex13
x=-2:1:2;
y=-2:1:2;
[X,Y]=meshgrid(x,y);
Z=X.^2+Y.^2;
subplot(2,2,1);mesh(X,Y,Z),grid on;
title('����ͼa');
subplot(2,2,2);mesh(X,Y,Z),view([0,30]),grid on;
title('a�ڡ�0,��30����ͼ');
subplot(2,2,3);contour(X,Y,Z),grid on;
title('����ͼa�Ķ�ά�ȸ���');
subplot(2,2,4);contour3(X,Y,Z,10),grid on;
title('����ͼa����ά�ȸ���');