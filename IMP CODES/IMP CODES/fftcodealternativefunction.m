a=imread('C:\Users\vansh\Desktop\IMP CODES\IMP CODES\images\sunflower.jpeg');
Mat = double(a);  
[rows,columns]=size(Mat); 
A = zeros(rows,columns);
B = zeros(rows,columns);
for r=1:rows 
  for c=1:columns
      A(r,c)= A(r,c)+(Mat(r,c)*exp(((-1j)*2*pi*(r-1)*(c-1))/rows));
  end
end
for c=1:columns 
  for r=1:rows
      B(r,c)=(B(r,c)+(A(r,c)*exp((-1i)*2*pi*(r-1)*(c-1)/columns)));
  end
end
figure(1), imshow(B)
figure(2)
imshow(a)