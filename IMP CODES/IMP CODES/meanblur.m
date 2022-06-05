clear all
close all
clc
org_img=imread('C:\Users\vansh\Desktop\IMP CODES\IMP CODES\images\sunflower.jpeg');
%for this project simplifying and using only gray image therefore
%converting this image in gray color
gray_img=rgb2gray(org_img);
subplot(1,3,1)
imshow(gray_img)
title('gray image')

%kernel for mean filter smoothening
%large kernel
k1=(1/25)*([1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1;1 1 1 1 1;1 1 1 1 1]);
k2=(1/9)*([1 1 1;1 1 1;1 1 1]);

I_1=conv2(double(gray_img),double(k1));
I_2=conv2(double(gray_img),double(k2));

subplot(1,3,2)
imshow(abs(I_1),[])
title('Large Kernel Mean Smoothening')

subplot(1,3,3)
imshow(abs(I_2),[])
title('Small Kernel Mean Smoothening')












