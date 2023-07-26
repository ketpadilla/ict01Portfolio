%Initialize Variables (Given: Simulate User Generated Input)
sampleData = [1 10 80 120];
disp('Enter Weight:')
weight = sampleData(1,randi([1,4]))
cost=double(0);

%Calculate Cost
if weight<=70
    cost=15+(5*(weight-2));
    fprintf('Cost = $%.2f\n',cost)
else
    if weight>70 & weight<=100
        cost=30+(5*(weight-2));
        fprintf('Cost = $%.2f\n',cost)
    elseif weight>100
        disp('Packages heavier than 100 pounds cannot be mailed!')
    end
end