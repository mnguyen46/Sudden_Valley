clear all
clc

[ndata, text, alldata] = xlsread('OFET fab table copy.xlsx');

[m,n] = size(alldata);
OFET = struct();
for i = 3:71
    for j = 1:28
        cat = alldata(j,2);
        OFET(i).(cat{1})=alldata(j,i);
    end
end
