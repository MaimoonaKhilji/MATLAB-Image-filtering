f=imread('emoji.png');
subplot(1,3,1);
imshow(f);
title('original image');

%Gaussian
n=imnoise(f,'gaussian');
subplot(1,3,2);
imshow(n)
title('gaussian image');

w=fspecial("average");
z=imfilter(n,w,"replicate");
subplot(1,3,3);
imshow(z)
title('gaussian remove image');

%Salt & Pepper
s=imnoise(f,'salt & pepper',0.02);
subplot(1,3,2);
imshow(s)
title('salt & pepper image');

w=fspecial("average");
g=imfilter(s,w,"replicate");
subplot(1,3,3);
imshow(g)
title('salt & pepper remove  image');
