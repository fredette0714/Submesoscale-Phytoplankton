clear;clc;
load('figS3.mat')
qq = figure;
set(gcf, 'units', 'normalized','position',[.1 .1 .55 .3]);
%% a
hh1 = axes('position',[.005 0.1 .45 .65]);
x = linspace(29.5,389.5,180);
y = linspace(-85.5,85.5,90);
% H2(1:10,:) = nan(10,180);
% H2(80:90,:) = nan(11,180);
m_proj('hammer','lat',[-90 90],'long',[30 390],'direction','vertical','aspect',.5); %投影方式及绘图范围设定
m_pcolor(x,y,H2); %画颜色填充图
caxis([0 400])
m_coast('patch','k','linewidth',0.5);
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);
title('Nutricline depth','fontsize',12,'FontName','Arial');
ch = colorbar;
set(ch,'position',[0.45 0.175 0.01 .45],'ticklength',0.015,'fontsize',10,'FontName','Arial','ytick',[0:100:400]) % colorbar的位置，[左 下 宽 高]
set(get(ch,'title'),'string','m','fontsize',10,'FontName','Arial');
cm = (nclCM(81,13));
colormap(cm);
LA = axis;
set(hh1,'FontSize',10,'FontName','Arial');
text((LA(2)-LA(1))*0.0+LA(1)-0.1,(LA(4)-LA(3))*1.1+LA(3)+0.0017,'(a)','fontsize',15,'FontName','Arial');
%% b
hh1 = axes('position',[.5 0.1 .45 .65]);%% 定义子图1的左下角位置和长宽
m_proj('hammer','lat',[-90 90],'long',[30 390],'direction','vertical','aspect',.5); %投影方式及绘图范围设定
m_pcolor(x,y,H3); %画颜色填充图
shading flat;  %去掉网格线
caxis([-20 300])
m_coast('patch','k','linewidth',0.5);
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);
title('MLD Sg>10^{-5} s^{-2}','fontsize',12,'FontName','Arial');
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3)+0.1,'(b)','fontsize',15,'FontName','Arial');
ch = colorbar;
set(ch,'position',[0.955 0.175 0.01 .45],'ticklength',0.015,'fontsize',10,'FontName','Arial','ytick',[0:100:300]) % colorbar的位置，[左 下 宽 高]
set(get(ch,'title'),'string','m','fontsize',10,'FontName','Arial');
cm = (nclCM(81,13));
cm = [[220,220,220]./255;cm];
colormap(hh1,cm);

clearvars -except qq
print('figS3.tiff','-r1000','-dtiff');
