function [outputArg1] = blur_Image(inputImage,inputBlur1,inputBlur2,inputBlur3)
%Blurring 
%   We blur the image using imfilter(correlation is default) with the given filters
%   Padding Option - Circular
%   Input array values outside the bounds of the array are computed by implicitly assuming the input array is periodic.
outputArg1(:,:,1) = imfilter(inputImage,inputBlur1,'circular');
outputArg1(:,:,2)= imfilter(inputImage,inputBlur2,'circular');
outputArg1(:,:,3)= imfilter(inputImage,inputBlur3,'circular');
end

