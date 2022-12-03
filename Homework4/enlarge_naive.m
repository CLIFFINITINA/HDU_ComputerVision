function out = enlarge_naive(image, size_W, axis)
%     """���� seam carving�㷨����ͼ��ĳߴ�.
% 
%     ÿ��ѭ�������Ƕ��Ḵ��ͼ����������͵�seam. �����ظ�������̣�ֱ��ͼ��ߴ�����Ҫ��.
%     �õ��ĺ���:
%         - backtrack_seam
%         - duplicate_seam
% 
%     Args:
%         image: ��״Ϊ (H, W, C) ������
%         size:  Ŀ��ĸ߻��߿� (�� axis ����)
%         axis: ���ӿ��(axis=1) ���߸߶� (axis=0)% 
%     Returns:
%         out: ���axis=0��������ߴ�Ϊ (size_W, W, C),��� axis=1��������ߴ�Ϊ (H, size_W, C)
%     """

    out = image;
    if axis == 0
        out = rot90(out);
    end

%   ��Ĵ���   
    [H, W, C] = size(image);
    energy = energy_function(out);
    [vcost, vpaths] = compute_cost([], energy, 1);
    [~, index] = min(vcost(end, :));
    seam = backtrack_seam(vpaths, index);
for i = 1: size_W - W
    out = duplicate_seam(out, seam);
end

%   ��Ĵ���

    if axis == 0
        out = rot90(out);
        out = rot90(out);
        out = rot90(out);
    end
    out = uint8(out);
end