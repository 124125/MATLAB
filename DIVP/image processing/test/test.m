testimg = imread("/MATLAB Drive/images/women.jpg");

dim = size(testimg)


figure;
imshow(testimg);

gray = rgb2gray(testimg);

figure;
imshow(gray);

indexim = gray2ind(gray);
figure;
imshow(indexim);

row = 256;
col = 256;

img = rand(row,col);
img = round(img);



imshow(img);