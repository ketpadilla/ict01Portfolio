% Get the point spacings use x as variable
x=linspace(0,10,100);
% Calculate first function use y1 as variable
y1=exp((-0.5)*x).*sin(2*x);
% Plot the first function
semilogy (x,y1,'b-','LineWidth',2);
hold on;
% Calculate the second function use y2 as variable
y2=exp((-0.5)*x).*cos(2*x);
% Plot the second function
semilogy (x,y2,'r--','LineWidth',3);
hold off;
% Finish the plot
title('Plotting on Log Scale');
legend('sin(x)','cos(x)');
xlabel ('x-axis');
ylabel ('y-axis');
grid on;