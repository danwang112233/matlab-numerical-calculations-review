function ex13
x=-2:1:2;
y=-2:1:2;
[X,Y]=meshgrid(x,y);
Z=X.^2+Y.^2;
subplot(2,2,1);mesh(X,Y,Z),grid on;
title('网格图a');
subplot(2,2,2);mesh(X,Y,Z),view([0,30]),grid on;
title('a在∠0,∠30的视图');
subplot(2,2,3);contour(X,Y,Z),grid on;
title('网格图a的二维等高线');
subplot(2,2,4);contour3(X,Y,Z,10),grid on;
title('网格图a的三维等高线');