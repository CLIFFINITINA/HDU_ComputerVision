%����``double_thresholding``�����ǿ������Ե�ı��
%ǿ��Ե������Ե�ĵ㱻��ǳ�True(Ҳ����1)��������ǳ�0
%ǿ��Ե���ݶ�ֵ���ڸ���ֵ��
%����Ե���ݶ�ֵ���ڸߵ���ֵ֮��
function [strong_edges, weak_edges] = double_thresholding(nms, high_threshold, low_threshold)
% ��Ĵ���

[m, n]= size(nms);
strong_edges = zeros(m, n);
weak_edges = zeros(m, n);


    for i =1: m
        for j =1: n
            if nms(i, j)>high_threshold
                strong_edges(i, j)=1;
            end
            if nms(i, j)<=high_threshold && nms(i, j)>low_threshold
                weak_edges(i, j)=1;
            end
        end
    end
% ��Ĵ���
end