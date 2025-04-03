% File: polarPlot.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Generates a polar plot of a mathematical function.

function main()
    % MAIN Entry point for generating a polar plot
    clear; clc; close all;

    theta = linspace(0, 2*pi, 41); 
    r_theta = sin(2*theta) .* cos(theta);
    
    polar(theta, r_theta, 'r-o');
    grid on;
end

main();
