I = imread('C:\Users\vansh\Desktop\IMP CODES\IMP CODES\images\sunflower.jpeg');
J = imnoise(I,'salt & pepper',0.02);
M=rgb2gray(J);
K = medfilt2(M);
subplot(121);imshow(J);
subplot(122);imshow(K);