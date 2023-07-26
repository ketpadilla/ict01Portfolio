%Initialize Variables (Given: Simulate User Generated Input)

disp('Enter the x coefficient:');
x=randi([-150 150])
disp('Enter the y coefficient:');
y=randi([-150 150])

%Evaluate values
if x>=0 & y>=0
    f=x+y;
    disp(f);
else
    if x>=0 & y<0
        f=x+(y^2);
        disp(f);
    elseif x<0 & y>=0
        f=y+(x^2);
        disp(f)
    elseif x<0 & y<0
        f=(y^2)+(x^2);
        disp(f);
    end
end

