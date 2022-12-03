function out = duplicate_seam(image, seam)
%     """����seam�ϵ����ص�, ʹ����Щ���ص��������.
% 
%     �ú����ᱻ enlarge_naive �Լ� enlarge ���á�
% 
%     ����:
%         image: ��״Ϊ (H, W, C) ������
%         seam: ��״Ϊ (H,1)�����飬����ĵ�i��Ԫ�ر����˵�i�е�����ֵ����seam����ÿ��Ԫ�ص�λ�ö���(i, seam[i])��
% 
%     Returns:
%         out: ��״Ϊ (H, W + 1, C) ������
%     """

    [H, W, C] = size(image);
    out = zeros(H, W + 1, C);
%   ��Ĵ���
for k = 1: C
    for i = 1: H
        out(i, seam(i) + 1, k) = image(i, seam(i), k);
        for j = 1: seam(i)
            out(i, j, k) = image(i, j, k);
        end
        for j = seam(i) + 2: W + 1
            out(i, j, k) = image(i, j - 1, k);
        end
    end
end
%   ��Ĵ���

end