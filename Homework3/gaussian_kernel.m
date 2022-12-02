%利用公式生成高斯分布
function result = gaussian_kernel(sizeN ,sigma)

% 你的代码
k = floor(sizeN / 2);
result = zeros(sizeN, sizeN);
for i = 1: sizeN
    for j = 1: sizeN
        mat = exp(- ((i - k) * (i - k) + (j - k) * (j - k)) / (2 * sigma * sigma));
        result(i, j) = 1 / (2 * pi * sigma * sigma) * mat;
    end
end

% 你的代码

end