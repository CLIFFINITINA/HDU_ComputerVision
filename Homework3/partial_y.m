%������ֱ������ݶ�
function result = partial_y(img)
%   ��Ĵ���
[m, n] = size(img);
dy= [0, 0.5, 0; 0, 0, 0; 0, -0.5, 0];
result = zeros(m, n);
result = conv2(img, dy, 'same');
%   ��Ĵ���
end