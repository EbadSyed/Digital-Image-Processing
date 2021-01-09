blurKernel = nonLinearMotionBlurKernel;
noisy_image = cameraMan_blur_noise(:,:,3);
original_image = cameraMan_original;

a = zeros(100,1);
i = 1;

for u = 0:0.05:0.95
    im = inverse_filter(noisy_image,blurKernel,u);
    a(i) = psnr(original_image,im,1);
    subplot(4,5,i),imshow(im),title(['PSNR',num2str(a(i)),'   Do',num2str(u)])
    i = i + 1;
end


