%Initialize variables
inArray=double([]);
outMedia=double(0);
indexVal=uint8(0);
indexVal1=uint8(0);
indexVal2=uint8(0);
%Prompt questions
inArray=input('Input numbers (incase in brackets, separated by spaces): ');
%Evaluable array
inArray=sort(inArray);
switch (length(inArray))
    case{3 5 7 9 11 13 15 17 19}
        indexVal=length(inArray);
        indexVal=(indexVal+1)/2;
        outMedian=inArray(indexVal);
        fprintf('Median = %d\n', outMedian)
    case{4 6 8 10 12 14 16 18 20}
        indexVal=length(inArray);
        indexVal1=indexVal/2;
        indexVal2=(indexVal/2)+1;
        outMedian=(inArray(indexVal1)+inArray(indexVal2)/2);
        fprintf('Median = %d\n', outMedian)
    otherwise
        fprintf('Index out of range')
end