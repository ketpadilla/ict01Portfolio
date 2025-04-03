% File: tempF2C.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Converts temperature from Fahrenheit to Celsius.

function tempC = tempF2C(tempF)
    % Converts temperature from Fahrenheit to Celsius.
    %
    % Syntax:
    %   tempC = tempF2C(tempF)
    %
    % Input:
    %   tempF - temperature in Fahrenheit
    %
    % Output:
    %   tempC - temperature in Celsius

    tempC = (tempF - 32) / 1.8;  % Conversion formula
    fprintf('The temperature in degrees Celsius is %.2f\n', tempC);
end

function main()
    % MAIN Entry point for the program
    clear; clc; close all;

    tempF = input('Enter temperature in Fahrenheit: ');
    tempF2C(tempF);
end

main();
