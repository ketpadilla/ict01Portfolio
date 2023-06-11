%Type your commands for the first plot
x=linspace(0,10,100);
yx=exp(-5.0*x).*sin(2*x);
figure(1);
subplot(2,2,1);
bar(x,yx);
title('Bar plot');
grid on;
hold on;
%Type your commands for the second plot
b=[250 150 200 150 250];
subplot(2,2,2);
pie(b,b==max(b));
explode=[1 0 0 0 1];
pie(b, explode);
title('Pie chart');
%Type your commands for the third plot
theta=linspace(0,6*pi,41);
subplot(2,2,3);
k=0.5;
r=k.*theta;
polar(theta,r);
title('Polar Plot');
%Type your commands for the last plot
syms x;
subplot(2,2,4);
f=sin(x)/x;
fx=ezplot(erf(f),[-4*pi, 4*pi]);
fx.Color = ('r');
fx.Marker = ('p');
title('Ezplot plot');
hold off;