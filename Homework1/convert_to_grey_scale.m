function result=convert_to_grey_scale(img)
%����������ɫͼ��imgת���ɻҶ�ͼ��result��ת����ʽ���£�
%Gray = 0.299R + 0.587G + 0.114B
%��ʾ��matlab����double���͵�ͼ����Ҫ�����ֵ������1���ܽ�����ʾ���������Ҫ���й�һ������
img=im2double(img);
[a,b,c]=size(img);
result=ones(a,b);
for k=1:c
    for i=1:a
        for j=1:b
            result(i,j)=0.299*img(i,j,1)+0.587*img(i,j,2)+0.114*img(i,j,3);
        end
    end
end
end