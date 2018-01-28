% % 16-level uniform quantized image
% clear;
% image=[];
% a=0;
% image=imread('D:\work\Fig0809(a).tif');
% for i=1:1:512
%     for j=1:1:512
%         a=fix(image(i,j)/16); %判断灰度区间
%         image(i,j)=a*16+8;    %取灰度区间的中间值
%         a=0;
%     end
% end
% imwrite(image,'D:\work\1','bmp'); %可以根据需要更改保存路径及名称

% % 16-level tapered quantized image
% clear;
% image=[];
% image=imread('D:\work\Fig0809(a).tif');
% for i=1:1:512
%     for j=1:1:512          %判断灰度区间，并取合适的灰度值
%         if(image(i,j)<=35)
%             image(i,j)=28;
%         elseif(image(i,j)<=41)
%             image(i,j)=39;
%         elseif(image(i,j)<=54)
%             image(i,j)=48; 
%         elseif(image(i,j)<=69)
%             image(i,j)=62;
%         elseif(image(i,j)<=80)
%             image(i,j)=75;
%         elseif(image(i,j)<=88)
%             image(i,j)=85;
%         elseif(image(i,j)<=99)
%             image(i,j)=94;
%         elseif(image(i,j)<=107)
%             image(i,j)=104;
%         elseif(image(i,j)<=114)
%             image(i,j)=111;
%         elseif(image(i,j)<=122)
%             image(i,j)=119;
%         elseif(image(i,j)<=129)
%             image(i,j)=126;
%         elseif(image(i,j)<=136)
%             image(i,j)=133;
%         elseif(image(i,j)<=146)
%             image(i,j)=142;
%         elseif(image(i,j)<=161)
%             image(i,j)=154;
%         elseif(image(i,j)<=185)
%             image(i,j)=174;
%         else
%             image(i,j)=208;
%         end
%     end
% end
% imwrite(image,'D:\work\2.bmp','bmp');  %可以根据需要更改保存路径及名称

% % 256-level tapered quantized image
% clear;
% image=[];
% a=0;
% image=imread('D:\work\Fig0316(2)(2nd_from_top).tif');
% for i=1:1:500
%     for j=1:1:500
%         image(i,j)=(image(i,j)-90)*5;   %使灰度值均匀的分布在灰度值0-255之间
%     end
% end
% imwrite(image,'D:\work\0316tapered.bmp','bmp'); %可以根据需要更改保存路径及名称

%histograms
clear;
image=[];
image=imread('D:\work\2.bmp'); %可以根据需要更读取路径及名称
image2=[];
image2=reshape(image(:,:),1,262144); % 1.改变矩阵，使其便于matlab画图
                                     %  2.可根据图片大小调整数值，例如512*512图像，则输入262144,500*500图像则输入250000
hist(image2,0:255)                   %绘制histogram图像



