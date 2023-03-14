close all;
clear all;
clc;

%% Load the image and split channels.

Image=imread('image.jpg');
%Display image
figure('Name','original image');
imshow(Image);
title('original image');

rgbImage=im2double(Image);
grayImage = rgb2gray(rgbImage); 

% Extract the individual red, green, and blue color channels.
redChannel = rgbImage(:, :, 1);
greenChannel = rgbImage(:, :, 2);
blueChannel = rgbImage(:, :, 3);

meanR = mean2(redChannel);
meanG = mean2(greenChannel);
meanB = mean2(blueChannel);
meanGray = mean2(grayImage);

% Make all channels have the same mean
redChannel = (double(redChannel) * meanGray / meanR);
greenChannel = (double(greenChannel) * meanGray / meanG);
blueChannel = (double(blueChannel) * meanGray / meanB);

%redChannel and blueChannel Correction
redChannel=redChannel-0.3*(meanG-meanR).*greenChannel.*(1-redChannel);
blueChannel=blueChannel+0.3*(meanG-meanB).*greenChannel.*(1-blueChannel);
%% White Balancing

% Recombine separate color channels into a single, true color RGB image.
rgbImage_white_balance = cat(3, redChannel, greenChannel, blueChannel);

%Display image
figure('Name','White balance');
imshow(rgbImage_white_balance);
title('After White balance');
%% Histogram Equalization
Histogram_Equalization = histeq(rgbImage_white_balance);

%Display image
figure('Name','Histogram Equalization');
imshow(Histogram_Equalization );
title('After Histogram Equalization');
%% Gamma correction
%appliy contrast-adjusted image.
Gamma_correction = imadjust(Histogram_Equalization,[],[],0.5);

%Display image
figure('Name','Gamma correction');
imshow(Gamma_correction);
title('After Gamma correction');

%% sharpening
sharpening = imsharpen(Histogram_Equalization);
%Display image
figure('Name','sharpening');
imshow(sharpening);
title('After sharpening');


%% fusion

%Merge the two images by taking the maximum of the absolute value of the coefficients for both approximations and details.
XFUS = wfusimg(Gamma_correction,sharpening,'sym4',5,'max','max');

%Display image
figure('Name','fusion');
imshow(xfusmaxmax);
title('After fusion');
