%�ú���ʵ���˴�ͼ�����Ƴ�һ��seam
function out = remove_seam(image, seam)
    
    if length(size(image))==2
        image = reshape(image,[size(image),1]);
    end
    [H,W,C]=size(image);
    out = zeros(H,W-1,C);
    %��Ĵ���
    for k = 1: C
        for i = 1: H
            for j = 1: seam(i) - 1
                out(i, j, k) = image(i, j, k);
            end
            for j = seam(i): W - 1
                out(i, j, k) = image(i, j + 1, k);
            end
        end
    end
    
    %��Ĵ���

end