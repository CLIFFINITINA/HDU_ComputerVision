%����ˮƽ������ݶ�
function result = partial_x(img)
%   ��Ĵ���
[m, n] = size(img);
dx= [0, 0, 0; 0.5, 0, -0.5; 0, 0, 0];
result = zeros(m, n);
result = conv2(img, dx, 'same');
%   ��Ĵ���
end