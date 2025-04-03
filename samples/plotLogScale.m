% File: plotLogScale.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Plots two functions on a logarithmic scale.

function main()
    % MAIN Entry point for plotting on logarithmic scale
    clear; clc; close all;

    x=linspace(0,10,100);
    y1=exp((-0.5)*x).*sin(2*x);

    semilogy (x,y1,'b-','LineWidth',2);
    hold on;
    
    y2=exp((-0.5)*x).*cos(2*x);

    semilogy (x,y2,'r--','LineWidth',3);
    hold off;

    title('Plotting on Log Scale');
    legend('sin(x)','cos(x)');
    xlabel ('x-axis');
    ylabel ('y-axis');
    grid on;
end

main();
