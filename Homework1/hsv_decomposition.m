function result=hsv_decomposition(img,channel)
%������������ͼƬ�ֽ�ΪH,S,V����ͨ��
%������ָ��ͨ����ͼ��
%��ʾ��matlab����double���͵�ͼ����Ҫ�����ֵ������1���ܽ�����ʾ���������Ҫ���й�һ������
%��ʾ�������������д��ڼ���help rgb2hsv�鿴����
img=rgb2hsv(img);
if channel=='H'
    result=img(:,:,1);
end
if channel=='S'
    result=img(:,:,2);
end
if channel=='V'
    result=img(:,:,3);
end
end