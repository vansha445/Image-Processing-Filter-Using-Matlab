clc
close all
clear all

%Read an Image
org_img=imread('C:\Users\vansh\Desktop\IMP CODES\IMP CODES\images\Chris-Hemsworth-Mens-Health-2019-HD-Celebrities-4k-.jpeg')
%for this project simplifying and using only gray image
gray_img=rgb2gray(org_img)
fftimg=fft2(gray_img)

subplot(2,3,1)
imshow(gray_img)
title('Gray image of original image')

subplot(2,3,2)
imshow(abs(fftimg),[])
title('fft of image')

F=fftshift(fftimg)
%subplot(2,3,3)
%imshow(abs(F),[])

log_img = log(1+abs(F));
subplot(2,3,3)
imshow(log_img,[])
title('log of fft just to represent fft')

k=[-1 -1 -1;-1 4 -1;-1 -1 -1]

G_1=conv2(double(F),double(k))
subplot(2,3,4)
imshow(abs(G_1),[])
title('impact of filter on fft')

ifftimg=ifft2((G_1))
subplot(2,3,5)
imshow(abs(ifftimg),[])
title('Result after fft inverse')

G_2=conv2(double(gray_img),double(k))
subplot(2,3,6)
imshow(abs(G_2),[])
title('Result should be')



