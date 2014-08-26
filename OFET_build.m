clear all
clc

[ndata, text, alldata] = xlsread('OFET fab table copy.xlsx');

[m,n] = size(alldata);
OFET = struct();
for i = 3:71
    for j = 1:28
        cat = alldata(j,2);
        cellji = alldata(j,i);
        OFET(i-2).(cat{1})=cellji{1};
    end
end
