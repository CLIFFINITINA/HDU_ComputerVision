function result=lab_decomposition(img,channel)
%������������ͼƬ�ֽ�ΪL,A,B����ͨ��
%������ָ��ͨ����ͼ��
%��ʾ��matlab����double���͵�ͼ����Ҫ�����ֵ������1���ܽ�����ʾ���������Ҫ���й�һ������
%��ʾ������Lͨ��������100���ɣ�����aͨ����һ�����120���ɣ�����bͨ����һ�����90����
%��ʾ�������������д��ڼ���help rgb2lab�鿴����
img=rgb2lab(img);
if channel=='L'
    result=img(:,:,1)/100;
end
if channel=='A'
    result=img(:,:,2)/120;
end
if channel=='B'
    result=img(:,:,3)/90;
end
end
