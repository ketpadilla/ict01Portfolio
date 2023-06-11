theta=linspace(0,2*pi,41);
r_theta=sin(2*theta).*cos(theta);
polar(theta,r_theta,'r-o');
grid on;