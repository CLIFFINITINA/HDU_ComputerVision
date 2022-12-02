%������ʵ����canny��Ե���
%�ܹ��ɷ�Ϊ5����
% ͼƬƽ��
% �����ݶ�
% �Ǽ���ֵ����
% ˫��ֵ
% ץȡ��Ե
function result = canny(img, kernel_size, sigma, high, low)
% ��Ĵ���
    img=double(img);
    kernel = gaussian_kernel(kernel_size, sigma);
    smoothed = conv2(img, kernel, 'same');
    [G,theta]=gradient(smoothed);
    nms = non_maximum_suppression(G, theta);
    [strong_edges, weak_edges] = double_thresholding(nms, high, low);
    edge = link_edges(strong_edges, weak_edges);
    result=edge;
% ��Ĵ���
end