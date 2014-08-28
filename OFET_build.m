clear all
clc

[ndata, text, alldata] = xlsread('OFET fab table copy.xlsx');

OFET = struct();
for i = 3:71
    for j = 1:28
        cat = alldata(j,2);
        cellji = alldata(j,i);
        OFET(i-2).(cat{1})=cellji{1};
    end
    OFET(i-2).CoatProc='Spun';
end

[m,n] = size(OFET);
for i = 3:8
    for j = 32:58
        cat = alldata(j,2);
        cellji = alldata(j,i);
        OFET(i-2+n).(cat{1})=cellji{1};
    end
    OFET(i-2+n).CoatProc='Dipped';
end
[m,n]=size(OFET);
for i = 3:19
    for j = 62:88
        cat = alldata(j,2);
        cellji = alldata(j,i);
        OFET(i-2+n).(cat{1})=cellji{1};
    end
    OFET(i-2+n).CoatProc='Dropped';
end