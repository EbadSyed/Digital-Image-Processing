function [restored_image] = clsf_filter(cam_blur_noise,PSF,noise_power)
%CLSF Filter
%   Detailed explanation goes here
restored_image = deconvreg(cam_blur_noise,PSF,noise_power);
end

