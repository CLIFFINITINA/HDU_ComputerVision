function result=mix_quadrants(img1)
%������������ͼ�����2*2�Ļ��֣������Ͻ��ķ�֮һ�����Ͻ��ķ�֮һ�����½��ķ�֮һ�Լ����½��ķ�֮һ��
%����ÿһ���ķ�֮һͼ�񣬶����в�ͬ�Ĳ���������֮ǰ��ɵĺ�������
%���Ͻ��ķ�֮һ��ȥ��'R'ͨ��
%���Ͻ��ķ�֮һ���䰵
%���½��ķ�֮һ�����ù�ʽ������x_n = x_p^0.5
%���½��ķ�֮һ��ȥ��'R'ͨ��
%������������Ժ��ͼ��
img1=im2double(img1);
[a,b,c]=size(img1);
result=img1;
im1=rgb_exclusion(img1,'R');
im2=dim_image(img1);
im3=img1;
for k=1:c
    for i=1:a
        for j=1:b
            im3(i,j,k)=(im3(i,j,k)^0.5);
        end
    end
end
result(1:a/2,1:b/2,:)=im1(1:a/2,1:b/2,:);
result(a/2:a,1:b/2,:)=im3(a/2:a,1:b/2,:);
result(1:a/2,b/2:b,:)=im2(1:a/2,b/2:b,:);
result(a/2:a,b/2:b,:)=im1(a/2:a,b/2:b,:);
end
