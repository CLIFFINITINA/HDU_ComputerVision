%此函数完成了对原图像的0填充
%例如: 对于一张仅有一个像素点的图像[1]，如果pad_height = 1, pad_width = 2，
%那么填充后的图像就是一张3*5的图像：
%          [0, 0, 0, 0, 0],
%          [0, 0, 1, 0, 0],
%          [0, 0, 0, 0, 0]
function result=zero_pad(img, pad_height, pad_width)
% 你的代码
[a, b] = size(img);
% zeros(a, b) -> 生成 a * b 的零矩阵
img1 = zeros(a + pad_height * 2, b + pad_width * 2);
% 在图像的中心部分填入原图像内容
img1(pad_height + 1: pad_height + a, pad_width + 1: pad_width + b) = img(1: a, 1: b);
result = img1;
% 你的代码
end