% Initialize array c
c= [1.1000,-3.2000,3.4000,0.6000,0.6000,1.1000,-0.6000,3.1000,1.3000,0.6000,5.5000,0];
% Type the MATLAB command that will select and display all elements in row 2 of array c.Store the answer in outputArr_1 variable.
outputArr_1=c(2,:)
%Type the MATLAB command that will select and display all elements in columns 2,3 and 4 of array c. Store the answer in outputArr_2
outputArr_2=c(:,2:4)
%Type the MATLAB command that will select and display elements 1.3000 and 5.5000 in row 3 of array c. Store the answer in outputArr_3
outputArr_3=c(3,[1 3])
%Type the MATLAB command that will swap the rows and columns of array c. Store the output in new c variable.
new_c=c';
%Type the MATLAB command that will display the size of array new_c. Store the size in size_new_c variable.
size_new_c=size(new_c)