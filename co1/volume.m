% Compute for the volume of a cone
u = symunit;
vol = u.mm^3;
r = u.mm
h = u.mm;
r = 5;
h = 12;
vol = pi*(r^2)*(h/3);
fprintf('The volume of a cone if %f\n;, vol)