function result=rgb_exclusion(img,channel)
%�������Ӳ�ɫͼ��img��ȥָ����ͨ��channel
%���ڱ�ȥ����ͨ����ֱ�ӽ���ͨ��ֵ��Ϊ0����
result=img;
if channel=='R'
    result(:,:,1)=0;
end
if channel=='G'
    result(:,:,2)=0;
end
if channel=='B'
    result(:,:,3)=0;
end
end