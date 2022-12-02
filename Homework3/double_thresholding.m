%函数``double_thresholding``完成了强、弱边缘的标记
%强边缘和弱边缘的点被标记成True(也就是1)，其余点标记成0
%强边缘：梯度值大于高阈值；
%弱边缘：梯度值介于高低阈值之间
function [strong_edges, weak_edges] = double_thresholding(nms, high_threshold, low_threshold)
% 你的代码

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
% 你的代码
end