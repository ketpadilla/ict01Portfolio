%Main Program
%Initialize Variables
num1=double(0);
num2=double(0);
mathOp=char(' ');

%Prompt Input
num1=input('Enter first number: ');
num2=input('Enter second number: ');

    %Display Options
fprintf('\nAvailable Operations:\n');
fprintf('A. Addition\n');
fprintf('B. Subtraction\n');
fprintf('C. Multiplication\n');
fprintf('D. Division\n');
fprintf('E. Exponentiation\n\n');

mathOp=input('Enter Chosen Option: ','s');
    %Disable K-sentivitiy of Program (via. upper function)
switch upper(mathOp)
    case 'A'
        A=Sub_Program_A(num1,num2);
        %Structure of line of syntax above:
    case 'B'
        B=Sub_Program_B(num1,num2);
    case 'C'
        C=Sub_Program_C(num1,num2);
    case 'D'
        D=Sub_Program_D(num1,num2);
    case 'E'
        E=Sub_Program_E(num1,num2);
    otherwise
        fprintf('\nOption not included. Choose from the options provided.\n\n');
end


