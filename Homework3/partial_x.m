%计算水平方向的梯度
function result = partial_x(img)
%   你的代码
[m, n] = size(img);
dx= [0, 0, 0; 0.5, 0, -0.5; 0, 0, 0];
result = zeros(m, n);
result = conv2(img, dx, 'same');
%   你的代码
end