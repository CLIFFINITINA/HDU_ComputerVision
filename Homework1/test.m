image1_path = './image1.jpg'

% 你的代码
img1 = imread("image1.jpg");

new_image = dim_image(img1);
imshow(new_image);

function result = dim_image(img)
%将图像的每个像素点上的像素值均按下式进行变换
%x_n = 0.5*x_p^2
%提示：matlab对于double类型的图像，需要其绝对值不大于1才能进行显示。因此你需要进行归一化处理。
img=im2double(img);
[a,b,c]=size(img);
for k=1:c
    for i=1:a
        for j=1:b
            img(i,j,k)=0.5*(img(i,j,k)^2);
        end
    end
end
result=img;
end