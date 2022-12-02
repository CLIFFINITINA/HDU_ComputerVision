function result=mix_quadrants(img1)
%本函数将输入图像进行2*2的划分，即左上角四分之一，右上角四分之一，左下角四分之一以及右下角四分之一。
%对于每一个四分之一图像，都进行不同的操作（利用之前完成的函数）：
%左上角四分之一：去除'R'通道
%右上角四分之一：变暗
%左下角四分之一：按该公式变亮：x_n = x_p^0.5
%右下角四分之一：去除'R'通道
%最终输出处理以后的图像
img1=im2double(img1);
[a,b,c]=size(img1);
result=img1;
im1=rgb_exclusion(img1,'R');
im2=dim_image(img1);
im3=img1;
for k=1:c
    for i=1:a
        for j=1:b
            im3(i,j,k)=(im3(i,j,k)^0.5);
        end
    end
end
result(1:a/2,1:b/2,:)=im1(1:a/2,1:b/2,:);
result(a/2:a,1:b/2,:)=im3(a/2:a,1:b/2,:);
result(1:a/2,b/2:b,:)=im2(1:a/2,b/2:b,:);
result(a/2:a,b/2:b,:)=im1(a/2:a,b/2:b,:);
end
