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
