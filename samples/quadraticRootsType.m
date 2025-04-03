% File: quadraticRootsType.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Determines the type of roots of a quadratic equation.

function determineQuadraticRootsType(a, b, c)
    % Determines the type of roots of a quadratic equation based on the discriminant.
    %
    % Syntax:
    %   determineQuadraticRootsType(a, b, c)
    %
    % Input:
    %   a - coefficient of x^2
    %   b - coefficient of x
    %   c - constant term

    dis = (b^2) - (4 * a * c);

    if dis > 0
        fprintf('2 Distinct real roots\n');
    elseif dis < 0
        fprintf('2 Complex roots\n');
    else
        fprintf('2 Identical roots\n');
    end
end

function main()
    % MAIN Entry point for the program
    clear; clc; close all;

    a = input('Value of a: ');
    b = input('Value of b: ');
    c = input('Value of c: ');

    determineQuadraticRootsType(a, b, c);
end

main();
