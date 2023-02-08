function [ n, n1,k,p] = nyttest2( x,y )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n=lillietest(x);
n1=lillietest(x);

if ((n==0)&&(n1==0)) 
[k,p]= ttest2(x,y);
else 
[p,k]= ranksum(x,y);
end

% if k==0
%     disp(k);
%     disp(p);
% end
end

