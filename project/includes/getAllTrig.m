% File: getAllTrig.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Plots the provided parameters into all trigonometric functions

function getAllTrig(amplitude, frequency, phaseShift, verticalShift, numCycles, endPoint, xValues, phasePoints)
    % Syntax:
    %   getSin(amplitude, frequency, phaseShift, verticalShift, numCycles, endPoint, xValues, phasePoints)
    %
    % Inputs:
    %   amplitude    - The amplitude of the trigonometric function
    %   frequency    - The frequency (b) of the trigonometric function
    %   phaseShift   - The phase shift (c) of the trigonometric function
    %   verticalShift - The vertical shift (d) of the trigonometric function
    %   numCycles    - The number of cycles to display
    %   endPoint     - The end point of the graph
    %   xValues      - The x values for plotting
    %   phasePoints  - The phase points to mark on the graph

    nexttile
    getSin(amplitude, frequency, phaseShift, verticalShift, numCycles, endPoint, xValues, phasePoints, 'sin');
    hold on;

    nexttile
    getCos(amplitude, frequency, phaseShift, verticalShift, numCycles, endPoint, xValues, phasePoints, 'cos');
    hold on;

    nexttile
    getTan(amplitude, frequency, phaseShift, verticalShift, endPoint, phasePoints, 'tan');
    hold on;
    
    nexttile
    getCsc(amplitude, frequency, phaseShift, verticalShift, endPoint, phasePoints, 'csc');
    hold on;
    
    nexttile
    getSec(amplitude, frequency, phaseShift, verticalShift, endPoint, phasePoints, 'sec');
    hold on;
    
    nexttile
    getCot(amplitude, frequency, phaseShift, verticalShift, endPoint, phasePoints, 'cot');
    hold off;
end
