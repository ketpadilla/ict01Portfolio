syms x y z;
fx=3*x+4*y+12*z==10;
gx=-x+8*z==3;
zx=3*x-7*y+12*z==-51;
[a,b,c]=solve(fx,gx,zx);
x=double(a);
y=double(b);
z=double(c);
printf('The answer are x=%.3f, y=%.3f, z=%.3f', x, y, z)