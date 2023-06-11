%Initialize Variables
x=int8(0);
y=int8(0);
outProd=int8(0);

%Prompt Inputs
x=input('Input first integer: ');
y=input('Input second integer: ');

%Evaluate Values
for ii=1:x
    for jj=1:y
        outProd=ii*jj;
        fprintf('%d x %d = %d\n',ii,jj,outProd);
    end
end