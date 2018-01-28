% % 16-level uniform quantized image
% clear;
% image=[];
% a=0;
% image=imread('D:\work\Fig0809(a).tif');
% for i=1:1:512
%     for j=1:1:512
%         a=fix(image(i,j)/16); %�жϻҶ�����
%         image(i,j)=a*16+8;    %ȡ�Ҷ�������м�ֵ
%         a=0;
%     end
% end
% imwrite(image,'D:\work\1','bmp'); %���Ը�����Ҫ���ı���·��������

% % 16-level tapered quantized image
% clear;
% image=[];
% image=imread('D:\work\Fig0809(a).tif');
% for i=1:1:512
%     for j=1:1:512          %�жϻҶ����䣬��ȡ���ʵĻҶ�ֵ
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
% imwrite(image,'D:\work\2.bmp','bmp');  %���Ը�����Ҫ���ı���·��������

% % 256-level tapered quantized image
% clear;
% image=[];
% a=0;
% image=imread('D:\work\Fig0316(2)(2nd_from_top).tif');
% for i=1:1:500
%     for j=1:1:500
%         image(i,j)=(image(i,j)-90)*5;   %ʹ�Ҷ�ֵ���ȵķֲ��ڻҶ�ֵ0-255֮��
%     end
% end
% imwrite(image,'D:\work\0316tapered.bmp','bmp'); %���Ը�����Ҫ���ı���·��������

%histograms
clear;
image=[];
image=imread('D:\work\2.bmp'); %���Ը�����Ҫ����ȡ·��������
image2=[];
image2=reshape(image(:,:),1,262144); % 1.�ı����ʹ�����matlab��ͼ
                                     %  2.�ɸ���ͼƬ��С������ֵ������512*512ͼ��������262144,500*500ͼ��������250000
hist(image2,0:255)                   %����histogramͼ��



