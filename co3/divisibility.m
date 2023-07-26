%Initialize Variables
inArr=double([]);
Div=double(0);
indexVal=uint8(0);
counter=1;

%Prompt Input
indexVal = input('How many numbers do you want to enter? ');
while counter <= indexVal
   inArr(counter) = input('Input number: ');
   counter=counter+1;
end
Div=input('Input Fixed Divisor: ');

%Evaluate Data Set
len=length(inArr);
for ii=1:len
    if mod(inArr(ii),Div)==0
        fprintf('\n[%.1f is divisible by %.1f]\n\n',inArr(ii),Div);
        continue
    end
end