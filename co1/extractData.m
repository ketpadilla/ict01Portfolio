sampleData = ["Pandesal", "59", "2.5";
	"Sputnik", "150", "5.99";
	"Spanish", "200", "3.25";
	"Donut", "46", "12.3";
	"SkyLab", "45", "5.45"];
%Extract 1st Column
Item = sampleData(:,1);
%Extract 2nd Column and make it as a vector array
Unit = sampleData(: ,2)';
%Extract 3rd Column and make it as a vector array
UnitCost = sampleData(:,3)';
TotalCost = double(Unit).*double(UnitCost);
%Search the most high priced bread in the inventory and its current index
[max,index] = max(TotalCost);
searchMax = Item(index, 1);
fprintf('The most expensive item is: ' + searchMax + ' at the amount of %0.2f', max)