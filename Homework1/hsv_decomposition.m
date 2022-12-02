function result=hsv_decomposition(img,channel)
%本函数将输入图片分解为H,S,V三个通道
%并返回指定通道的图像
%提示：matlab对于double类型的图像，需要其绝对值不大于1才能进行显示。因此你需要进行归一化处理。
%提示：可以在命令行窗口键入help rgb2hsv查看帮助
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