function blur=blur(image)
LEN=60 %The length of the blur in pixel%
THETA=30 %The angle of blur in degree%
PSF=fspecial('motion',LEN,THETA);%Increase PSF 
%once the PSF is created we use imfilter function
%to convolve the PSF with  the origin image to create blur image 
Blurred=imfilter(image,PSF,'circular','conv');
subplot(1,2,1),imshow(image),title('original image');
subplot(1,2,2),imshow(Blurred),title('original image');
