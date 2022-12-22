# Digital-image-processing-sampling-interpolation

In this project a 2-D grayscale image is downsampled and upsampled with antialiasing filter on and off with the interpollation methods of nearest-neighbor,bilinear and cubic interpolations.
The downsampling and upsampling method occurs with different scale factor for columns and rows.The cases are the followings:
->Downsample with row sampling scale 1/2, column sampling scale 1/4 with Antialiasing filter ON methods nearest,bilinear and cubic
->Upsample with row sampling scale 1/2, column sampling scale 1/4 with Antialiasing filter ON methods nearest,bilinear and cubic
->Compare MSE and PSNR between original and reconstructed image for each method(nearest,bilinear and cubic)


->Downsample with row sampling scale 1/2, column sampling scale 1/4 with Antialiasing filter OFF methods nearest,bilinear and cubic
->Upsample with row sampling scale 1/2, column sampling scale 1/4 with Antialiasing filter OFF methods nearest,bilinear and cubic
->Compare MSE and PSNR between original and reconstructed image for each method(nearest,bilinear and cubic)

->Downsample with row sampling scale 1/4, column sampling scale 1/2 with Antialiasing filter ON methods nearest,bilinear and cubic
->Upsample with row sampling scale 1/4, column sampling scale 1/2 with Antialiasing filter ON methods nearest,bilinear and cubic
->Compare MSE and PSNR between original and reconstructed image for each method(nearest,bilinear and cubic)

->Downsample with row sampling scale 1/4, column sampling scale 1/2 with Antialiasing filter OFF methods nearest,bilinear and cubic
->Upsample with row sampling scale 1/4, column sampling scale 1/2 with Antialiasing filter OFF methods nearest,bilinear and cubic
->Compare MSE and PSNR between original and reconstructed image for each method(nearest,bilinear and cubic)

->Downsample with row sampling scale 1/8, column sampling scale 1/8 with Antialiasing filter ON methods nearest,bilinear and cubic
->Upsample with row sampling scale 1/8, column sampling scale 1/8 with Antialiasing filter ON methods nearest,bilinear and cubic
->Compare MSE and PSNR between original and reconstructed image for each method(nearest,bilinear and cubic)

->Downsample with row sampling scale 1/8, column sampling scale 1/8 with Antialiasing filter OFF methods nearest,bilinear and cubic
->Upsample with row sampling scale 1/8, column sampling scale 1/8 with Antialiasing filter OFF methods nearest,bilinear and cubic
->Compare MSE and PSNR between original and reconstructed image for each method(nearest,bilinear and cubic)

Notes:The result of downsampled image is given for upsample in each case.
MSE(mean square error):is a metric that counts the quality of reconstructed image compare to original.
The smallest the better!
Aliasing: is an effect that causes different signals to become indistinguishable 
when sampled. It also often refers to the distortion or artifact that results when 
a signal reconstructed from samples is different from the original continuous 
signal. When an anti-aliasing filter is applied before sampling it satisfies that the
a signal sampler to restrict the bandwidth of a signal to satisfy the Nyquist–
Shannon sampling theorem over the band of interest
PSNR(peak signal to noise ratio):is a metric of quality of reconstructed image compared to original image.
The highest the better!

