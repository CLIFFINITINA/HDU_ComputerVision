function result=rgb_exclusion(img,channel)
%本函数从彩色图像img除去指定的通道channel
%对于被去除的通道，直接将该通道值置为0即可
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