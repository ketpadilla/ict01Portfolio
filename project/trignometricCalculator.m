% File: trignometricCalculator.m
% Author: Kristian Padilla
% Date: 2021
% Revised: April 03, 2025
% Description: Handles the plotting of trigonometric functions based on user input.

function main()
    % MAIN Entry point for the Trigonometric Function Grapher
    % This function prompts the user to select a trigonometric function, 
    % takes the required parameters, and plots the selected function.
    % 
    % Syntax:
    %   main()
    %
    % No input is required.
    %
    % Outputs:
    %   The function outputs the selected trigonometric function graph
    %   based on the user-provided parameters.

    addpath('includes');
    clear; clc; close all;

    choice = getTrigFunction();
    [amplitude, frequency, phaseShift, verticalShift, numCycles] = getParameters();
    [endPoint, xValues, phasePoints] = generalEvaluation(frequency, phaseShift, numCycles);
    
    switch upper(choice)
        case 'A'
            getSin(amplitude, frequency, phaseShift, verticalShift, numCycles, endPoint, xValues, phasePoints, 'sin');
        case 'B'
            getCos(amplitude, frequency, phaseShift, verticalShift, numCycles, endPoint, xValues, phasePoints, 'cos');
        case 'C'
            getTan(amplitude, frequency, phaseShift, verticalShift, endPoint, phasePoints, 'tan');
        case 'D'
            getCsc(amplitude, frequency, phaseShift, verticalShift, endPoint, phasePoints, 'csc');
        case 'E'
            getSec(amplitude, frequency, phaseShift, verticalShift, endPoint, phasePoints, 'sec');
        case 'F'
            getCot(amplitude, frequency, phaseShift, verticalShift, endPoint, phasePoints, 'cot');
        case 'G'
            getAllTrig(amplitude, frequency, phaseShift, verticalShift, numCycles, endPoint, xValues, phasePoints);
    end
    
    fprintf('Starting Point: %.2f\n', phaseShift);
    fprintf('Ending Point: %.2f\n', endPoint);
    fprintf('Range: [-%.2f, %.2f]\n\n', abs(amplitude), abs(amplitude));
end

function [amplitude, frequency, phaseShift, verticalShift, numCycles] = getParameters()
    % Prompts the user for the parameters required to plot the trigonometric function.
    % 
    % Syntax:
    %   [amplitude, frequency, phaseShift, verticalShift, numCycles] = getParameters()
    %
    % Outputs:
    %   amplitude     - The amplitude of the function
    %   frequency     - The frequency (b) of the function
    %   phaseShift    - The phase shift (c) of the function
    %   verticalShift - The vertical shift of the function
    %   numCycles     - The number of cycles to display

    amplitude = getValidInput('Amplitude: ');
    frequency = getValidInput('Frequency (b): ');
    phaseShift = getValidInput('Phase Shift (c): ');
    verticalShift = getValidInput('Vertical Shift: ');
    numCycles = getValidInput('Number of cycles to display: ');
end

function val = getValidInput(prompt)
    % Validates the user input to ensure that it is a positive, non-zero value
    % except for Phase Shift and Vertical Shift which can be zero.
    %
    % Syntax:
    %   val = getValidInput(prompt)
    %
    % Input:
    %   prompt - The input prompt string to be shown to the user
    %
    % Output:
    %   val - The validated user input

    val = input(prompt);
    
    if contains(prompt, 'Phase Shift') || contains(prompt, 'Vertical Shift')
        while isempty(val)
            val = input(['Enter a valid number for ', prompt]);
        end
    else
        while isempty(val) || val == 0
            val = input(['Enter a valid number for ', prompt]);
        end
    end
end


function choice = getTrigFunction()
    % Displays the available trigonometric functions to the user and returns
    % the selected function.
    %
    % Syntax:
    %   choice = getTrigFunction()
    %
    % Output:
    %   choice - The selected option ('A' to 'G')

    options = ['A', 'B', 'C', 'D', 'E', 'F', 'G'];
    
    fprintf(['\nWelcome User to the Trigonometric Function Grapher\n\n' ...
        'What trigonomectric function do you want to use?\n' ...
        'A. Sine\n' ...
        'B. Cosine\n' ...
        'C.Tangent\n' ...
        'D.Cosecant\n' ...
        'E.Secant\n' ...
        'F.Cotangent\n' ...
        'G.All of the above\n\n' ...
        ]);
    choice = input('Enter Chosen Option (A-G): ', 's');
    
    while ~any(upper(choice) == options)
        choice = input('Enter a valid option: ', 's');
    end
end

function [endPoint, xValues, phasePoints] = generalEvaluation(frequency, phaseShift, numCycles)
    % Evaluates the period, endpoint, and other values based on frequency,
    % phase shift, and number of cycles.
    %
    % Syntax:
    %   [period, endPoint, xValues, phasePoints] = generalEvaluation(frequency, phaseShift, numCycles)
    %
    % Inputs:
    %   frequency  - The frequency (b) of the function
    %   phaseShift - The phase shift (c) of the function
    %   numCycles  - The number of cycles to display
    %
    % Outputs:
    %   period     - The period of the trigonometric function
    %   endPoint   - The endpoint of the plot
    %   xValues    - The x values for plotting
    %   phasePoints - The phase points for marking on the graph

    adjustedFrequency = abs(frequency);
    period = (2*pi) / adjustedFrequency;
    endPoint = phaseShift + (numCycles * period);
    xValues = 0:0.001:endPoint + 0.001; 
    phasePoints = 0:pi/2:endPoint;
end

main();
