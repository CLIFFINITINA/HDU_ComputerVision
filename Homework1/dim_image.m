function result = dim_image(img)
%��ͼ���ÿ�����ص��ϵ�����ֵ������ʽ���б任
%x_n = 0.5*x_p^2
%��ʾ��matlab����double���͵�ͼ����Ҫ�����ֵ������1���ܽ�����ʾ���������Ҫ���й�һ������
img=im2double(img);
[a,b,c]=size(img);
for k=1:c
    for i=1:a
        for j=1:b
            img(i,j,k)=0.5*(img(i,j,k)^2);
        end
    end
end
result=img;
end