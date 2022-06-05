clc
clear all
close all

%Design the Gaussian Kernel
%Standard Deviation
sigma1 = 0.25
%Window size
sz1 = 3
[x1,y1]=meshgrid(-sz1:sz1,-sz1:sz1 )
z1= -(x1.^2+y1.^2)/(2*sigma1*sigma1)
Kernel1= exp(z1)/(2*pi*sigma1*sigma1)
subplot(2,2,1)
hs1=surf(x1,y1,Kernel1)
hs1.EdgeColor='none'
title('Gaussian Kernel 3*3 sigma=0.375')

%Design the Gaussian Kernel
%Standard Deviation
sigma2 = 0.75
%Window size
sz2 = 6
[x2,y2]=meshgrid(-sz2:sz2,-sz2:sz2 )
z2= -(x2.^2+y2.^2)/(2*sigma2*sigma2)
Kernel2= exp(z2)/(2*pi*sigma2*sigma2)
subplot(2,2,2)
hs2=surf(x2,y2,Kernel2)
hs2.EdgeColor='none'
title('Gaussian Kernel 6*6 sigma=0.75')

%Design the Gaussian Kernel
%Standard Deviation
sigma3 = 1.5
%Window size
sz3 = 12
[x3,y3]=meshgrid(-sz3:sz3,-sz3:sz3 )
z3= -(x3.^2+y3.^2)/(2*sigma3*sigma3)
Kernel3= exp(z3)/(2*pi*sigma3*sigma3)
subplot(2,2,3)
hs3=surf(x3,y3,Kernel3)
hs3.EdgeColor='none'
title('Gaussian Kernel 12*12 sigma=1.5')

%Design the Gaussian Kernel
%Standard Deviation
sigma4 = 3
%Window size
sz4 = 24
[x4,y4]=meshgrid(-sz4:sz4,-sz4:sz4 )
z4= -(x4.^2+y4.^2)/(2*sigma4*sigma4)
Kernel4= exp(z4)/(2*pi*sigma4*sigma4)
subplot(2,2,4)
hs4=surf(x4,y4,Kernel4)
hs4.EdgeColor='none'
title('Gaussian Kernel 24*24 sigma=3')
