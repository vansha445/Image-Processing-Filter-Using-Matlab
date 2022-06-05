clc
clear all
close all

%Read an Image
org_img=imread('C:\Users\vansh\Desktop\IMP CODES\IMP CODES\images\pexels-photo-2379004.jpeg')
%for this project simplifying and using only gray image
gray_img=rgb2gray(org_img)

subplot(2,3,1)
imshow(gray_img)
title('Gray image')

%Design the Gaussian Kernel Standard Deviation
sigma1 = 0.375
sz1 = 3 %Window size
[x1,y1]=meshgrid(-sz1:sz1,-sz1:sz1 );
z1= -(x1.^2+y1.^2)/(2*sigma1*sigma1);
Kernel1= exp(z1)/(2*pi*sigma1*sigma1);

%Standard Deviation
sigma2 = 0.75;
sz2 = 6 %Window size
[x2,y2]=meshgrid(-sz2:sz2,-sz2:sz2 );
z2= -(x2.^2+y2.^2)/(2*sigma2*sigma2);
Kernel2= exp(z2)/(2*pi*sigma2*sigma2);

%Standard Deviation
sigma3 = 1.5;
sz3 = 12 %Window size
[x3,y3]=meshgrid(-sz3:sz3,-sz3:sz3 );
z3= -(x3.^2+y3.^2)/(2*sigma3*sigma3);
Kernel3= exp(z3)/(2*pi*sigma3*sigma3);

%Standard Deviation
sigma4 = 3;
sz4 = 24 %Window size
[x4,y4]=meshgrid(-sz4:sz4,-sz4:sz4 );
z4= -(x4.^2+y4.^2)/(2*sigma4*sigma4);
Kernel4= exp(z4)/(2*pi*sigma4*sigma4);

%Blurring
I_1=conv2(double(gray_img),double(Kernel1))
I_2=conv2(double(gray_img),double(Kernel2))
I_3=conv2(double(gray_img),double(Kernel3))
I_4=conv2(double(gray_img),double(Kernel4))

subplot(2,3,2)
imshow(abs(I_1),[])
title('Blur with gausian kernel 3*3 sigma=0.375')

subplot(2,3,3)
imshow(abs(I_2),[])
title('Blur with gausian kernel 6*6 sigma=0.75')

subplot(2,3,4)
imshow(abs(I_3),[])
title('Blur with gausian kernel 12*12 sigma=1')

subplot(2,3,5)
imshow(abs(I_4),[])
title('Blur with gausian kernel 24*24 sigma=3')