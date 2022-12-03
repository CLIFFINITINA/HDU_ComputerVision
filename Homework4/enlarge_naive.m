function out = enlarge_naive(image, size_W, axis)
%     """利用 seam carving算法增加图像的尺寸.
% 
%     每次循环，我们都会复制图像中能量最低的seam. 不断重复这个过程，直到图像尺寸满足要求.
%     用到的函数:
%         - backtrack_seam
%         - duplicate_seam
% 
%     Args:
%         image: 形状为 (H, W, C) 的数组
%         size:  目标的高或者宽 (由 axis 决定)
%         axis: 增加宽度(axis=1) 或者高度 (axis=0)% 
%     Returns:
%         out: 如果axis=0，则输出尺寸为 (size_W, W, C),如果 axis=1，则输出尺寸为 (H, size_W, C)
%     """

    out = image;
    if axis == 0
        out = rot90(out);
    end

%   你的代码   
    [H, W, C] = size(image);
    energy = energy_function(out);
    [vcost, vpaths] = compute_cost([], energy, 1);
    [~, index] = min(vcost(end, :));
    seam = backtrack_seam(vpaths, index);
for i = 1: size_W - W
    out = duplicate_seam(out, seam);
end

%   你的代码

    if axis == 0
        out = rot90(out);
        out = rot90(out);
        out = rot90(out);
    end
    out = uint8(out);
end