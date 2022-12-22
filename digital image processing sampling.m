close all;
clear all;

I = imread('retriever.tiff');%enter the path of image of interest
[rows, columns] = size(I);
whos I

%--------- 1. Downsampling - rows 1/2 , columns 1/4 - nearest,bilinear,cubic - Antialiasing on ------------------
rows1 = rows/2;
columns1 = columns/4;
I1_nearOnDS = imresize(I,[rows1 columns1],'nearest','Antialiasing', true);
I1_BlnrOnDS = imresize(I,[rows1 columns1],'bilinear','Antialiasing', true);
I1_CbcOnDS = imresize(I,[rows1 columns1],'cubic','Antialiasing', true);
imwrite(I1_nearOnDS,'1_nearOnDS.tiff')
imwrite(I1_BlnrOnDS,'1_bilinearOnDS.tiff')
imwrite(I1_CbcOnDS,'1_cubicOnDS.tiff')

%--------- rows 1/2 , columns 1/4 - nearest,bilinear,cubic - Antialiasing off
I1_nearOffDS = imresize(I,[rows1 columns1],'nearest','Antialiasing', false);
I1_BlnrOffDS = imresize(I,[rows1 columns1],'bilinear','Antialiasing', false);
I1_CbcOffDS = imresize(I,[rows1 columns1],'bicubic','Antialiasing', false);
imwrite(I1_nearOffDS,'1_nearOffDS.tiff')
imwrite(I1_BlnrOffDS,'1_bilinearOffDS.tiff')
imwrite(I1_CbcOffDS,'1_cubicOffDS.tiff')

%--------- 2. Downsampling - rows 1/4 , columns 1/2 - nearest,bilinear,cubic - antialiasing on ------------------
rows2 = rows/4;
columns2 = columns/2;
I2_nearOnDS = imresize(I,[rows2 columns2],'nearest','Antialiasing',true);
I2_BlnrOnDS = imresize(I,[rows2 columns2],'bilinear','Antialiasing',true);
I2_CbcOnDS = imresize(I,[rows2 columns2],'cubic','Antialiasing',true);
imwrite(I2_nearOnDS,'2_nearOnDS.tiff')
imwrite(I2_BlnrOnDS,'2_bilinearOnDS.tiff')
imwrite(I2_CbcOnDS,'2_cubicOnDS.tiff')

%--------- rows 1/4 , columns 1/2 - nearest,bilinear,cubic - antialiasing off ------------------
I2_nearOffDS = imresize(I,[rows2 columns2],'nearest','Antialiasing',false);
I2_BlnrOffDS = imresize(I,[rows2 columns2],'bilinear','Antialiasing',false);
I2_CbcOffDS = imresize(I,[rows2 columns2],'cubic','Antialiasing',false);
imwrite(I2_nearOffDS,'2_nearOffDS.tiff')
imwrite(I2_BlnrOffDS,'2_bilinearOffDS.tiff')
imwrite(I2_CbcOffDS,'2_cubicOffDS.tiff')

%--------- 3. Downsampling rows and columns 1/8 - Antialiasing on --------------------
I3_nearOnDS = imresize(I,1/8,'nearest','Antialiasing',true);
I3_BlnrOnDS = imresize(I,1/8,'bilinear','Antialiasing',true);
% subplot(2,2,3)
% imshow(I3_BlnrOn)
% title('Resize image using bilinear - 1/8 - Antialiasing on')
I3_CbcOnDS = imresize(I,1/8,'cubic','Antialiasing',true);
imwrite(I3_nearOnDS,'3_nearOnDS.tiff')
imwrite(I3_BlnrOnDS,'3_bilinearOnDS.tiff')
imwrite(I3_CbcOnDS,'3_cubicOnDS.tiff')

%--------- rows and columns 1/8 - nearest,bilinear,bicubic - Antialiasing off --------
I3_nearOffDS = imresize(I,1/8,'nearest','Antialiasing',false);
I3_BlnrOffDS = imresize(I,1/8,'bilinear','Antialiasing',false);
I3_CbcOffDS = imresize(I,1/8,'cubic','Antialiasing',false);
imwrite(I3_nearOffDS,'3_nearOffDS.tiff')
imwrite(I3_BlnrOffDS,'3_bilinearOffDS.tiff')
imwrite(I3_CbcOffDS,'3_cubicOffDS.tiff')


%--------- 1. Upsampling - rows 1/2 , columns 1/4 - nearest,bilinear,bicubic - Antialiasing on ------------------
I1_nearOnUp = imresize(I1_nearOnDS,[rows columns],'nearest','Antialiasing', true);
I1_BlnrOnUp = imresize(I1_BlnrOnDS,[rows columns],'bilinear','Antialiasing', true);
I1_CbcOnUp = imresize(I1_CbcOnDS,[rows columns],'cubic','Antialiasing', true);

imwrite(I1_nearOnUp,'1_nearOnUp.tiff')
imwrite(I1_BlnrOnUp,'1_bilinearOnUp.tiff')
imwrite(I1_CbcOnUp,'1_cubicOnUp.tiff')
%--------- 1. Upsampling - rows 1/2 , columns 1/4 - nearest,bilinear,cubic - Antialiasing off ------------------
I1_nearOffUp = imresize(I1_nearOffDS,[rows columns],'nearest','Antialiasing', false);
I1_BlnrOffUp = imresize(I1_BlnrOffDS,[rows columns],'bilinear','Antialiasing', false);
I1_CbcOffUp = imresize(I1_CbcOffDS,[rows columns],'cubic','Antialiasing', false);

imwrite(I1_nearOffUp,'1_nearOffUp.tiff')
imwrite(I1_BlnrOffUp,'1_bilinearOffUp.tiff')
imwrite(I1_CbcOffUp,'1_cubicOffUp.tiff')

%--------- 2. Upsampling - rows 1/4 , columns 1/2 - nearest,bilinear,bicubic - Antialiasing on ------------------
I2_nearOnUp = imresize(I2_nearOnDS,[rows columns],'nearest','Antialiasing', true);
I2_BlnrOnUp = imresize(I2_BlnrOnDS,[rows columns],'bilinear','Antialiasing', true);
I2_CbcOnUp = imresize(I2_CbcOnDS,[rows columns],'cubic','Antialiasing', true);

imwrite(I2_nearOnUp,'2_nearOnUp.tiff')
imwrite(I2_BlnrOnUp,'2_bilinearOnUp.tiff')
imwrite(I2_CbcOnUp,'2_cubicOnUp.tiff')

% %--------- 2. Upsampling - rows 1/4 , columns 1/2 - nearest,bilinear,bicubic - Antialiasing off ------------------
I2_nearOffUp = imresize(I2_nearOffDS,[rows columns],'nearest','Antialiasing', false);
I2_BlnrOffUp = imresize(I2_BlnrOffDS,[rows columns],'bilinear','Antialiasing', false);
I2_CbcOffUp = imresize(I2_CbcOffDS,[rows columns],'cubic','Antialiasing', false);

imwrite(I2_nearOffUp,'2_nearOffUp.tiff')
imwrite(I2_BlnrOffUp,'2_bilinearOffUp.tiff')
imwrite(I2_CbcOffUp,'2_cubicOffUp.tiff')

%--------- 3. Upsampling - rows and columns 1/8 - nearest,bilinear,bicubic - Antialiasing on ------------------
I3_nearOnUp = imresize(I3_nearOnDS,[rows columns],'nearest','Antialiasing',true);
I3_BlnrOnUp = imresize(I3_BlnrOnDS,[rows columns],'bilinear','Antialiasing',true);
I3_CbcOnUp = imresize(I3_CbcOnDS,[rows columns],'cubic','Antialiasing',true);

imwrite(I3_nearOnUp,'3_nearOnUp.tiff')
imwrite(I3_BlnrOnUp,'3_bilinearOnUp.tiff')
imwrite(I3_CbcOnUp,'3_cubicOnUp.tiff')

%--------- 3. Upsampling - rows and columns 1/8 - nearest,bilinear,bicubic - Antialiasing off ------------------
I3_nearOffUp = imresize(I3_nearOffDS,[rows columns],'nearest','Antialiasing',false);
I3_BlnrOffUp = imresize(I3_BlnrOffDS,[rows columns],'bilinear','Antialiasing',false);
I3_CbcOffUp = imresize(I3_CbcOffDS,[rows columns],'cubic','Antialiasing',false);

imwrite(I3_nearOffUp,'3_nearOffUp.tiff')
imwrite(I3_BlnrOffUp,'3_bilinearOffUp.tiff')
imwrite(I3_CbcOffUp,'3_cubicOffUp.tiff')

%--------- MSE ---------------
% Antialiasing on
mse_I1_nearOnUp = immse(I1_nearOnUp,I);
mse_I1_BlnrOnUp = immse(I1_BlnrOnUp,I);
mse_I1_CbcOnUp = immse(I1_CbcOnUp,I);
% Antialiasing off
mse_I1_nearOffUp = immse(I1_nearOffUp,I);
mse_I1_BlnrOffUp = immse(I1_BlnrOffUp,I);
mse_I1_CbcOffUp = immse(I1_CbcOffUp,I);

% Antialiasing on
mse_I2_nearOnUp = immse(I2_nearOnUp,I);
mse_I2_BlnrOnUp = immse(I2_BlnrOnUp,I);
mse_I2_CbcOnUp = immse(I2_CbcOnUp,I);
% Antialiasing off
mse_I2_nearOffUp = immse(I2_nearOffUp,I);
mse_I2_BlnrOffUp = immse(I2_BlnrOffUp,I);
mse_I2_CbcOffUp = immse(I2_CbcOffUp,I);

% Antialiasing on
mse_I3_nearOnUp = immse(I3_nearOnUp,I);
mse_I3_BlnrOnUp = immse(I3_BlnrOnUp,I);
mse_I3_CbcOnUp = immse(I3_CbcOnUp,I);
% Antialiasing off
mse_I3_nearOffUp = immse(I3_nearOffUp,I);
mse_I3_BlnrOffUp = immse(I3_BlnrOffUp,I);
mse_I3_CbcOffUp = immse(I3_CbcOffUp,I);

%--------- PSNR --------------
% peaksnr = psnr(A,ref)
% Antialiasing on
psnr_I1_nearOnUp = psnr(I1_nearOnUp,I);
psnr_I1_BlnrOnUp = psnr(I1_BlnrOnUp,I);
psnr_I1_CbcOnUp = psnr(I1_CbcOnUp,I);
%Antialiasing off
psnr_I1_nearOffUp = psnr(I1_nearOffUp,I);
psnr_I1_BlnrOffUp = psnr(I1_BlnrOffUp,I);
psnr_I1_CbcOffUp = psnr(I1_CbcOffUp,I);

% Antialiasing on
psnr_I2_nearOnUp = psnr(I2_nearOnUp,I);
psnr_I2_BlnrOnUp = psnr(I2_BlnrOnUp,I);
psnr_I2_CbcOnUp = psnr(I2_CbcOnUp,I);
%Antialiasing off
psnr_I2_nearOffUp = psnr(I2_nearOffUp,I);
psnr_I2_BlnrOffUp = psnr(I2_BlnrOffUp,I);
psnr_I2_CbcOffUp = psnr(I2_CbcOffUp,I);

%Antialiasing on
psnr_I3_nearOnUp = psnr(I3_nearOnUp,I);
psnr_I3_BlnrOnUp = psnr(I3_BlnrOnUp,I);
psnr_I3_CbcOnUp = psnr(I3_CbcOnUp,I);
% Antialiasing off
psnr_I3_nearOffUp = psnr(I3_nearOffUp,I);
psnr_I3_BlnrOffUp = psnr(I3_BlnrOffUp,I);
psnr_I3_CbcOffUp = psnr(I3_CbcOffUp,I);

%---- save workspace ----------------------------------------------------
save('ex1_workspace');

%--------------------- IMAGES - Downsapling -----------------------------
f1 = figure(1);
montage({'1_nearOnDS.tiff','1_bilinearOnDS.tiff','1_cubicOnDS.tiff'})
title('Downsampling - scale 1/2 rows 1/4 columns - AA on - Near Bilinear Cubic')
f2 = figure(2);
montage({'1_nearOffDS.tiff','1_bilinearOffDS.tiff','1_cubicOffDS.tiff'})
title('Downsampling - scale 1/2 rows 1/4 columns - AA off - Near Bilinear Cubic')
f3 = figure(3);
montage({'2_nearOnDS.tiff','2_bilinearOnDS.tiff','2_cubicOnDS.tiff'})
title('Downsampling - scale 1/4 rows 1/2 columns - AA on - Near Bilinear Cubic')
f4 = figure(4);
montage({'2_nearOffDS.tiff','2_bilinearOffDS.tiff','2_cubicOffDS.tiff'})
title('Downsampling - scale 1/4 rows 1/2 columns - AA off - Near Bilinear Cubic')
f5 = figure(5);
montage({'3_nearOnDS.tiff','3_bilinearOnDS.tiff','3_cubicOnDS.tiff'})
title('Downsampling - scale 1/8 rows 1/8 columns - AA on - Near Bilinear Cubic')
f6 = figure(6);
montage({'3_nearOffDS.tiff','3_bilinearOffDS.tiff','3_cubicOffDS.tiff'})
title('Downsampling - scale 1/8 rows 1/8 columns - AA off - Near Bilinear Cubic')
%--------------------- IMAGES - Upsapling -----------------------------
f7 = figure(7);
montage({'1_nearOnUp.tiff','1_bilinearOnUp.tiff','1_cubicOnUp.tiff'})
title('Upsampling of downsampled image with scale 1/2 rows 1/4 columns - AA on - Near Bilinear Cubic')
f8 = figure(8);
montage({'1_nearOffUp.tiff','1_bilinearOffUp.tiff','1_cubicOffUp.tiff'})
title('Upsampling of downsampled image with scale 1/2 rows 1/4 columns - AA off - Near Bilinear Cubic')
f9 = figure(9);
montage({'2_nearOnUp.tiff','2_bilinearOnUp.tiff','2_cubicOnUp.tiff'})
title('Upsampling of downsampled image with scale 1/4 rows 1/2 columns - AA on - Near Bilinear Cubic')
f10 = figure(10);
montage({'2_nearOffUp.tiff','2_bilinearOffUp.tiff','2_cubicOffUp.tiff'})
title('Upsampling of downsampled image with scale 1/4 rows 1/2 columns - AA off - Near Bilinear Cubic')
f11 = figure(11);
montage({'3_nearOnUp.tiff','3_bilinearOnUp.tiff','3_cubicOnUp.tiff'})
title('Upsampling of downsampled image with scale 1/8 rows 1/8 columns -AA on - Near Bilinear Cubic')
f12 = figure(12);
montage({'3_nearOffUp.tiff','3_bilinearOffUp.tiff','3_cubicOffUp.tiff'})
title('Upsampling of downsampled image with scale 1/8 rows 1/8 columns -AA off - Near Bilinear Cubic')
%----------- save figures -----------------------------------
saveas(f1,'fig1.tiff');
saveas(f2,'fig2.tiff');
saveas(f3,'fig3.tiff');
saveas(f4,'fig4.tiff');
saveas(f5,'fig5.tiff');
saveas(f6,'fig6.tiff');
saveas(f7,'fig7.tiff');
saveas(f8,'fig8.tiff');
saveas(f9,'fig9.tiff');
saveas(f10,'fig10.tiff');
saveas(f11,'fig11.tiff');
saveas(f12,'fig12.tiff');