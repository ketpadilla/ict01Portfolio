p=1000;
theta=-2*pi:pi/20:2*pi;

epsilon=0;
r=p./(1-epsilon.*cos(theta));
polar(theta,r);
hold on;

epsilon=0.25;
r=p./(1-(epsilon.*cos(theta)));
polar(theta,r);
hold on;

epsilon=0.50;
r=p./(1-(epsilon.*cos(theta)));
polar(theta,r);
hold off;

legend('\epsilon=0','\epsilon=0.25','\epsilon=0.50');
title('SATELLITE ORBITS');
xlabel('X-AXIS');
ylabel('Y-AXIS');