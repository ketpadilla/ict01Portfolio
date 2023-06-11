%Initialize Variables
inArr=double([]);
indexVal=uint8(0);
counter=1;

%Prompt Input
inArr=input('[Input]: ');

%Evaluate Data Set
len=length(inArr);
for ii=1:len
    if mod(inArr(ii),2)==0
        continue
    end
    fprintf('%.1f is not divisible by 2.0\n',inArr(ii));
end