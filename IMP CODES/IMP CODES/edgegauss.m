%Read an Image
org_img=imread('C:\Users\vansh\Desktop\IMP CODES\IMP CODES\images\sunflower.jpeg')
%for this project simplifying and using only gray image
gray_img=rgb2gray(org_img)

%Design the Gaussian Kernel
%Standard Deviation
sigma1 = 0.375;
%Window size
sz1 = 3;
[x1,y1]=meshgrid(-sz1:sz1,-sz1:sz1 );
z1= -(x1.^2+y1.^2)/(2*sigma1*sigma1);
Kernel1= exp(z1)/(2*pi*sigma1*sigma1);
subplot(2,4,1)
hs1=surf(x1,y1,Kernel1)
hs1.EdgeColor='none'
hs1.FaceColor='flat'
title('gausian kernel 3*3 sigma=0.375') 

%Design the Gaussian Kernel
%Standard Deviation
sigma2 = 0.75;
%Window size
sz2 = 6;
[x2,y2]=meshgrid(-sz2:sz2,-sz2:sz2 );
z2= -(x2.^2+y2.^2)/(2*sigma2*sigma2);
Kernel2= exp(z2)/(2*pi*sigma2*sigma2);
subplot(2,4,2)
hs2=surf(x2,y2,Kernel2)
hs2.EdgeColor='none'
title('gausian kernel 6*6 sigma=0.75') 

%Design the Gaussian Kernel
%Standard Deviation
sigma3 = 1.5;
%Window size
sz3 = 12;
[x3,y3]=meshgrid(-sz3:sz3,-sz3:sz3 );
z3= -(x3.^2+y3.^2)/(2*sigma3*sigma3);
Kernel3= exp(z3)/(2*pi*sigma3*sigma3);
subplot(2,4,3)
hs2=surf(x3,y3,Kernel3)
hs2.EdgeColor='none'
title('gausian kernel 12*12 sigma=1.5') 

%Design the Gaussian Kernel
%Standard Deviation
sigma4 = 3;
%Window size
sz4 = 24;
[x4,y4]=meshgrid(-sz4:sz4,-sz4:sz4 );
z4= -(x4.^2+y4.^2)/(2*sigma4*sigma4);
Kernel4= exp(z4)/(2*pi*sigma4*sigma4);
subplot(2,4,4)
hs2=surf(x4,y4,Kernel4)
hs2.EdgeColor='none'
title('gausian kernel 24*24 sigma=3')

I_1=conv2(double(gray_img),double(Kernel1))
I_2=conv2(double(gray_img),double(Kernel2))
I_3=conv2(double(gray_img),double(Kernel3))
I_4=conv2(double(gray_img),double(Kernel4))

%kernel for various edge detetion in sobel edge detection
k_vedge=[-1 0 1;-2 0 2;-1 0 1]
k_hedge=[1 2 1;0 0 0;-1 -2 -1]

Gx_1=conv2(double(I_1),double(k_vedge))
Gy_1=conv2(double(I_1),double(k_hedge))

G_1=(Gx_1.^2 + Gy_1.^2).^0.5

Gx_2=conv2(double(I_2),double(k_vedge))
Gy_2=conv2(double(I_2),double(k_hedge))

G_2=(Gx_2.^2 + Gy_2.^2).^0.5

Gx_3=conv2(double(I_3),double(k_vedge))
Gy_3=conv2(double(I_3),double(k_hedge))

G_3=(Gx_3.^2 + Gy_3.^2).^0.5

Gx_4=conv2(double(I_4),double(k_vedge))
Gy_4=conv2(double(I_4),double(k_hedge))

G_4=(Gx_4.^2 + Gy_4.^2).^0.5

subplot(2,2,1)
imshow(abs(G_1),[])
title('Edge with gausian kernel 3*3 sigma=0.375')

subplot(2,2,2)
imshow(abs(G_2),[])
title('Edge with gausian kernel 6*6 sigma=0.75')

subplot(2,2,3)
imshow(abs(G_3),[])
title('Edge with gausian kernel 12*12 sigma=1.5')

subplot(2,2,4)
imshow(abs(G_4),[])
title('Edge with gausian kernel 24*24 sigma=3')