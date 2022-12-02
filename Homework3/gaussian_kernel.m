%���ù�ʽ���ɸ�˹�ֲ�
function result = gaussian_kernel(sizeN ,sigma)

% ��Ĵ���
k = floor(sizeN / 2);
result = zeros(sizeN, sizeN);
for i = 1: sizeN
    for j = 1: sizeN
        mat = exp(- ((i - k) * (i - k) + (j - k) * (j - k)) / (2 * sigma * sigma));
        result(i, j) = 1 / (2 * pi * sigma * sigma) * mat;
    end
end

% ��Ĵ���

end