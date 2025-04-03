% File: satelliteOrbits.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Plots satellite orbits for different values of eccentricity (epsilon).

function main()
    % MAIN Entry point for plotting satellite orbits
    clear; clc; close all;
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
end

main();
