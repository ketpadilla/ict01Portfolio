%Calculate the sum of numbers 1 to 1000
%Initialize the Variables
outSum=double(0);

%Compute for the sum of 1 up to 1000 (via Vectorization)
for ii=1:1000
    outSum=outSum+ii;
end

%Display Sum
fprintf('The sum of 1 up to 1000 is equal to %i\n',outSum);
