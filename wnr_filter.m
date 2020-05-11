function [cam_wnr] = wnr_filter(cam_blur_noise,PSF,K)
%Wnr Filter
%   We take the inputs as the Noisy Image
%   The estimated Blur or PSF
%   And estimated K using NSR

cam_wnr = deconvwnr(cam_blur_noise,PSF,K);

end

