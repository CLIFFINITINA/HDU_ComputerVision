function result=mix_images(img1,img2,channel1, channel2)
%����������һ���µ�ͼƬ��ʹ��������벿����ͼƬ1���Ұ벿����ͼƬ2������ȥ��ָ����ͼ��ͨ����R,G,����B����
[a,b,c]=size(img1);
img1=rgb_exclusion(img1,channel1);
img2=rgb_exclusion(img2,channel2);
for i=1:a
    for j=b/2:b
        img1(i,j,:)=img2(i,j,:);
    end
end
result=img1;
end