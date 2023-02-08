function [ n,p] = nyAnova1( x,y )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
n=kstest(x);


if (n==0) 
p= anova1(x);
else 
p= kruskalwallis(x);
end
end