function out = reduce_forward(image, size_W, axis)
%     """���� seam carving�㷨����ͼ��ĳߴ�.
% 
%     ÿ��ѭ�����Ƕ��Ƴ�������С��seam. ����ѭ�����������ֱ���õ���Ҫ��ͼ��ߴ�.
%     ���õ��ĺ���:
%         - backtrack_seam
%         - remove_seam
% 
%     Args:
%         image: ��״Ϊ (H, W, 3) ������
%         size:  Ŀ��ĸ߻��߿� (�� axis ����)
%         axis: ���ٿ��(axis=1) ���߸߶� (axis=0)
% 
%     Returns:
%         out: ���axis=0��������ߴ�Ϊ (size, W, 3),��� axis=1��������ߴ�Ϊ (H, size, 3)
%     """

    out = image;
    if axis == 0
        out = rot90(out);
    end

    %��Ĵ���
    n = size(out, 2);
    
    for i = 1: (n - size_W)
        energy = energy_function(out);
        [vcost, vpaths] = compute_forward_cost([], energy, 1);
        [~, index] = min(vcost(end, :));
        seam = backtrack_seam(vpaths, index);
        out = remove_seam(out, seam);
    end
    
    %��Ĵ���

    if axis == 0
        out = rot90(out);
        out = rot90(out);
        out = rot90(out);
    end
    out = uint8(out);
end