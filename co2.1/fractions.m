%Initializ num, den variables
num=double(0);
den=double(0);
%Prompt a question and get a value from the user
num=input('Enter a numerator?');
den=input('Enter a denominator?');
%Evaluate the faction
if num==0 | den==0
    fprintf('Neither a proper, whole, or improper fraction')
else
    if num>=den & rem(num,den)==0
        fprintf('Whole number')
    elseif num < den
        fprintf('Proper fraction')
    else
        fprintf('Improper fraction')
    end
end