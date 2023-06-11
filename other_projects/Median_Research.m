%Initialize variables
inArray=double([]);
outMedia=double(0);
indexVal=uint8(0);
counter=1;

%Prompt question
indexVal = input('How many numbers do you want to enter? ');
while counter <= indexVal
   inArray(counter) = input('Input number: ');
   counter=counter+1;
end

%Evaluable array
inArray=sort(inArray);
outMedian=median(inArray);
fprintf('Median = %d\n', outMedian)