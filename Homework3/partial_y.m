%计算竖直方向的梯度
function result = partial_y(img)
%   你的代码
[m, n] = size(img);
dy= [0, 0.5, 0; 0, 0, 0; 0, -0.5, 0];
result = zeros(m, n);
result = conv2(img, dy, 'same');
%   你的代码
end