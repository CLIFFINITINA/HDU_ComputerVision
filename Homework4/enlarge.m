function out = enlarge(image, W_new, axis)
%     """通过复制低能量的seams，我们可以放大图片.
% 
%     首先，我们通过函数find_seams来获取k条低能量的seams.
%     随后我们循环k次来复制这些seams.
% 
%     利用了函数:
%         - find_seams
%         - duplicate_seam
% 
%     参数:
%         image: 形状为 (H, W, C) 的数组
%         size: 目标的尺寸（宽度或者高度）
%         axis: 是在宽度(axis=1) 或者高度 (axis=0)上寻找
% 
% 
%     Returns:
%         out: 如果axis=0，则输出为尺寸为 (size, W, C) 的数组。如果axis=1，则输出为 (H, size, C) 的数组
%     """

    out=image;
%   判断是否需要转置
    if axis == 0
        out = rot90(out);
    end

    [H, W, C] = size(out);

%   你的代码
    seams = find_seams(out, W_new - W);

    for k = 1: W_new - W
        seam = -ones(H, 1);
        for i = 1: H
            for j = 1: W + k - 1
                if seams(i, j) == k
                    seam(i) = j;
                end
            end
           % disp(seam(i));
        end
        out = duplicate_seam(out, seam);
        seams = duplicate_seam(seams, seam);
    end
%   你的代码

    if axis == 0
        out = rot90(out);
        out = rot90(out);
        out = rot90(out);
    end
    out=uint8(out);
end