%% 画图
clear;clc;
qq = figure;
set(gcf, 'units', 'normalized','position',[.1 .1 .6 .4]);
x = linspace(30,390,360);
y = linspace(-90,90,180);
load('figS5.mat')

%% light
hh1 =  axes('position',[.01 0.2 .3 .7]);
m_proj('hammer','lat',[-90 90],'long',[30 390],'direction','vertical','aspect',.5); %投影方式及绘图范围设定
m_pcolor(x,y,theta_light_a_grid'); %画颜色填充图
caxis([-1. .9])
cb = nclCM(153,21);
cb = [[150 150 150]./255;cb];
colormap(cb);
m_coast('patch','k','linewidth',0.5,'edgecolor','k');
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(a)','fontsize',15,'FontName','Arial');
title('{\theta} Anomaly from Photoacclimation Model','fontsize',12,'FontName','Arial');
cb = colorbar('horiz');
set(cb,'position',[0.025 .275 .275 .02],'ytick',linspace(-.9,.9,3));


%% SAT

hh1 =  axes('position',[.35 0.2 .3 .7]);
m_proj('hammer','lat',[-90 90],'long',[30 390],'direction','vertical','aspect',.5); %投影方式及绘图范围设定
m_pcolor(x,y,(theta_light_ag_grid)'); %画颜色填充图
caxis([-1.7 1.5])

m_coast('patch','k','linewidth',0.5,'edgecolor','k');
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);

cb = colorbar('horiz');
set(cb,'position',[0.025+0.34 .275 .275 .02],'ytick',linspace(-1.5,1.5,3));

title('{\theta} Anomaly from Satellite','fontsize',12,'FontName','Arial');
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(b)','fontsize',15,'FontName','Arial');

%% ratio
hh1 =  axes('position',[.69 0.2 .3 .7]);


m_pcolor(x,y,percent'); %画颜色填充图
caxis([-1.1 1])

m_coast('patch','k','linewidth',0.5,'edgecolor','k');
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);

cb = colorbar('horiz');
set(cb,'position',[0.025+0.34*2 .275 .275 .02],'ytick',linspace(-1,1,3));

title('Ratio between Satellite Observation \newline             and Model Output','fontsize',12,'FontName','Arial');
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(c)','fontsize',15,'FontName','Arial');
print(qq,'figS5.tiff','-r2000','-dtiff');