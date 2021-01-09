# Digital Image Processing Project

Done to satisfy the Project Requirement for Special Topics course EENG860 at New York Institute of Technology

# Project 1
Guassian and Bilateral Filtering

## Guassian Filtering
![GFilter](project1/gFilter.png)

## Bilateral Filtering
![BFilter](project1/bilateralFilter.png)

### Histogram Analysis
![HistoAnalysis](project1/histoAnalysis.png)

### Patch Analysis
![PAnalysis](project1/patchAnalysis.png)

# Project 2
Denoising Images using FIF, Wiener and CLSF.

## Filter Inverse Filter Implementation

```
function [outputArg1] = inverse_filter(cam_blur_noise,PSF,Do)

%cam_blur_noise is the degraded image
%PSF is the the blurred
%Do is the cuttoff

%Inverse Filter
%Computer Fast Fourier Transform

H = fft2(PSF);
G = fft2(cam_blur_noise);

outputArg1 = fftshift(ifft2((abs(H) > Do).*G./H));
end
```
![FIF](project2/fif.png)

## FIF vs WNR vs CLSF

### Gaussian Blur and Filtering
![GBlur](project2/gBlur.png)

### Linear Blur and Filtering
![LBlur](project2/lBlur.png)

### Non-Linear Blur and Filtering
![NLBlur](project2/nlBlur.png)