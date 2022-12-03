function out = enlarge(image, W_new, axis)
%     """ͨ�����Ƶ�������seams�����ǿ��ԷŴ�ͼƬ.
% 
%     ���ȣ�����ͨ������find_seams����ȡk����������seams.
%     �������ѭ��k����������Щseams.
% 
%     �����˺���:
%         - find_seams
%         - duplicate_seam
% 
%     ����:
%         image: ��״Ϊ (H, W, C) ������
%         size: Ŀ��ĳߴ磨��Ȼ��߸߶ȣ�
%         axis: ���ڿ��(axis=1) ���߸߶� (axis=0)��Ѱ��
% 
% 
%     Returns:
%         out: ���axis=0�������Ϊ�ߴ�Ϊ (size, W, C) �����顣���axis=1�������Ϊ (H, size, C) ������
%     """

    out=image;
%   �ж��Ƿ���Ҫת��
    if axis == 0
        out = rot90(out);
    end

    [H, W, C] = size(out);

%   ��Ĵ���
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
%   ��Ĵ���

    if axis == 0
        out = rot90(out);
        out = rot90(out);
        out = rot90(out);
    end
    out=uint8(out);
end