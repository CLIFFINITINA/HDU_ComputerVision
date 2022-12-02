%本函数实现了canny边缘检测
%总共可分为5步：
% 图片平滑
% 计算梯度
% 非极大值抑制
% 双阈值
% 抓取边缘
function result = canny(img, kernel_size, sigma, high, low)
% 你的代码
    img=double(img);
    kernel = gaussian_kernel(kernel_size, sigma);
    smoothed = conv2(img, kernel, 'same');
    [G,theta]=gradient(smoothed);
    nms = non_maximum_suppression(G, theta);
    [strong_edges, weak_edges] = double_thresholding(nms, high, low);
    edge = link_edges(strong_edges, weak_edges);
    result=edge;
% 你的代码
end