%���������������ͼ��ÿ�����ص������ļ���
function out = energy_function(image)
%     ����ÿ�����أ��ȼ����� x- �� y- ������ݶȣ�Ȼ���ٰ����ǵľ���ֵ��ӡ�
%     �ǵ��ȰѲ�ɫͼ��ת�ɻҶ�ͼ��Ŷ��
%     ���������ͼ�񣬼�ÿ�����ص㶼��
    if length(size(image))==3
        gray_image = double(rgb2gray(uint8(image)))/255;
    end

%   ��Ĵ���
[fx, fy] = gradient(gray_image);
out = abs(fx) + abs(fy);
%   ��Ĵ���

end