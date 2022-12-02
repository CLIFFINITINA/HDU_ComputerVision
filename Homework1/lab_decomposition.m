function result=lab_decomposition(img,channel)
%本函数将输入图片分解为L,A,B三个通道
%并返回指定通道的图像
%提示：matlab对于double类型的图像，需要其绝对值不大于1才能进行显示。因此你需要进行归一化处理。
%提示：对于L通道，除以100即可；对于a通道，一般除以120即可；对于b通道，一般除以90即可
%提示：可以在命令行窗口键入help rgb2lab查看帮助
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
