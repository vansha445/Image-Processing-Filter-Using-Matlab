clc
close all
clear all

%Design the Gaussian Kernel
%Window size

[x1,y1]=meshgrid(1:1:5,1:1:5);
k=(1/571)*([2 7 12 7 2;7 31 52 31 7;12 52 127 52 12;7 31 52 31 7;2 7 12 7 2])

figure(1)
hs1=surf(x1,y1,k)
hs1.EdgeColor='none'
title('gausian kernel 5*5 with sigma 1 approximation') 
