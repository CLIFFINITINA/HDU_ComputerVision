function result=mix_images(img1,img2,channel1, channel2)
%本函数创建一幅新的图片，使得它的左半部分是图片1，右半部分是图片2，并且去掉指定的图像通道（R,G,或者B）。
[a,b,c]=size(img1);
img1=rgb_exclusion(img1,channel1);
img2=rgb_exclusion(img2,channel2);
for i=1:a
    for j=b/2:b
        img1(i,j,:)=img2(i,j,:);
    end
end
result=img1;
end