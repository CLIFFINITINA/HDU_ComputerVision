function result=convert_to_grey_scale(img)
%本函数将彩色图像img转化成灰度图像result，转化公式如下：
%Gray = 0.299R + 0.587G + 0.114B
%提示：matlab对于double类型的图像，需要其绝对值不大于1才能进行显示。因此你需要进行归一化处理。
img=im2double(img);
[a,b,c]=size(img);
result=ones(a,b);
for k=1:c
    for i=1:a
        for j=1:b
            result(i,j)=0.299*img(i,j,1)+0.587*img(i,j,2)+0.114*img(i,j,3);
        end
    end
end
end