%Initialize Variables (Given: Simulate User Generated Input)
disp('Enter x: ');
rndNum = randi([1,3]);
sampleNum = [-1 0 2];
x = sampleNum(1,rndNum)
fun=double(0);

%Establish Function
if x<1
    fun=log(1/(1-x));
    disp(fun)
else
    if x>=1
    disp('Error')
    end
end