%Solve for the factorial of an integer
%Initialize Variables
inValue=double(0);
outFactorial=double(1);

%Prompt Question for Input
inValue=input('Enter an integer: ');

%Check for the nature of the input integer (if it is positive or negative)
if inValue<0
    disp('You must enter a positive integer!');
else
    %Compute the factorial of input integer
    for ii=1:inValue
        outFactorial=outFactorial*ii;
        %This statement is executed equal to the value of the inValue
        %variable
    end
    %Display the value of the factorial
    fprintf('The factorial is equal to %f\n',outFactorial);
end