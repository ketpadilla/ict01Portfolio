%Initialize variables
dis=double(0);
a=double(0);
b=double(0);
c=double(0);
a=input('Value of a?');
b=input('Value of b?');
c=input('Value of c?');
%Evaluable discriminant
dis=(b^2)-(4*a*c);
if dis>0
        fprintf('2 Distinct real roots');
else
    if dis<0
        fprintf('2 Complex roots');
    elseif dis==0
        fprintf('2 Identical roots');
    end
end