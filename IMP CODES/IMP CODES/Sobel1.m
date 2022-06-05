clc
clear all
close all

org_img=imread('C:\Users\vansh\Desktop\IMP CODES\IMP CODES\images\sunflower.jpeg')
%for this project simplifying and using only gray image
gray_img=rgb2gray(org_img)
subplot(2,2,1)
imshow(gray_img)
title('gray image')

%kernel for various edge detetion in sobel edge detection
k_vedge=[-1 0 1;-2 0 2;-1 0 1]
k_hedge=[1 2 1;0 0 0;-1 -2 -1]

G_1=conv2(double(gray_img),double(k_vedge))
G_2=conv2(double(gray_img),double(k_hedge))

subplot(2,2,2)
imshow(abs(G_1),[])
title('Vertical edge')

subplot(2,2,3)
imshow(abs(G_2),[])
title('Horizontal edge')

G_3=(G_1.^2 + G_2.^2).^0.5

subplot(2,2,4)
imshow(abs(G_3),[])
title('Sobel Edge Detection')
