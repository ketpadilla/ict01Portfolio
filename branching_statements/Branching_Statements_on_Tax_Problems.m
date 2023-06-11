%Initialize Variables (Given: Simulate User Generated Input)
sampleData = [5000 50000 100000];
income = sampleData(1,randi([1,3]));
fprintf('Taxible income: $%0.2f \n',income);
tax2002=double(0);
tax2009=double(0);

%Calculate 2009 basic tax
if income>=0 & income<=6000
    tax2009=0;
else
    if income>=6001 & income<=34000
        tax2009=(income-6000)*0.15;
    elseif income>=34001 & income<=80000
        tax2009=((income-34000)*0.30)+4200;
    elseif income>=80001 & income<=180000
        tax2009=((income-80000)*0.40)+18000;
    elseif income>180000
        tax2009=((income-180000)*0.45)+58000;
    end
end

%Add Medicare Levy for 2009
tax2009=tax2009+(tax2009*0.015);

%Calculate 2002 basic tax
if income>=0 & income<=6000
    tax2002=0;
else
    if income>=6001 & income<=20000
        tax2002=(income-6000)*0.17;
    elseif income>=20001 & income<=50000
        tax2002=((income-20000)*0.30)+2380;
    elseif income>=50001 & income<=60000
        tax2002=((income-50000)*0.42)+11380;
    elseif income>60000
        tax2002=((income-60000)*0.47)+15580;
    end
end

%Add Medicare Levy for 2002
tax2002=tax2002+(tax2002*0.015);

%Calculate Tax Difference
tax_diff=double(0);
tax_diff=tax2002-tax2009;
fprintf('Total tax for 2009 = $%.2f\n',tax2009);
fprintf('This is = $%.2f less than in 2002\n',tax_diff);