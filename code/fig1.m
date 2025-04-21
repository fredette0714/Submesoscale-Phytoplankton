clear,clc
load('fig1.mat');

%% fig1a
percentage = [percentage(180+30:360,:);percentage(1:180+29,:)];
qq = figure;
set(gcf, 'units', 'normalized','position',[.1 .1 .6 .7]);
hh1 = axes('position',[.05 0.5 .45 .45]);
x = linspace(30,390,360);
y = linspace(-90,90,180);
m_proj('hammer','lat',[-90 90],'long',[30 390],'direction','vertical','aspect',.5); 
m_pcolor(x,y,(percentage.*100)'); 
hold on
shading flat; 
colormap(nclCM(227,20));
caxis([0 100])
m_coast('patch','k','linewidth',0.05);
m_grid('linestyle','none','fontsize',6,'xtick',[],'ytick',[]);
LA1=axis;
text((LA1(2)-LA1(1))*0.05+LA1(1),(LA1(4)-LA1(3))*1.1+LA1(3),'(a)','fontsize',15,'FontName','Arial');
ch = colorbar;
set(get(ch,'title'),'string','%','fontsize',10);
set(ch,'position',[0.52 0.575 0.0075 0.275],'ticklength',0.015,'fontsize',10,'FontName','Arial','ytick',0:25:100) 
title('Contribution of {\theta} Anomaly to Chl Anomaly','fontsize',15,'FontName','Arial');


m_line([235 -116+360],[-25 -25],'color','m','linewidth',1,'linestyle','-')
m_line([235 -116+360],[-30 -30],'color','m','linewidth',1,'linestyle','-')
m_line([235 235],[-30 -25],'color','m','linewidth',1,'linestyle','-')
m_line([-116+360 -116+360],[-30 -25],'color','m','linewidth',1,'linestyle','-')

m_line([55 65],[24 24],'color','m','linewidth',1,'linestyle','-')
m_line([55 65],[12 12],'color','m','linewidth',1,'linestyle','-')
m_line([55 55],[12 24],'color','m','linewidth',1,'linestyle','-')
m_line([65 65],[12 24],'color','m','linewidth',1,'linestyle','-')

%% case1
hh1 = axes('position',[.0 0.2 .25 .25]);
m_proj('miller','lat',[12 24],'long',[55 65],'direction','vertical','aspect',.5)
m_pcolor(lon1,lat1,chla1)
caxis([-2,2])
hold on
m_scatter(lon_fsle1(fsle1'<-0.1),lat_fsle1(fsle1'<-0.1),1,[61/255 145/255 64/255],'filled');
m_coast('patch','k','linewidth',0.0005);
m_grid('linestyle','none','fontsize',10,'xtick',55:5:65,'ytick',12:3:24);
m_text(53,25,'(b)','fontsize',15,'FontName','Arial');
title('Chl Anomaly','FontSize',15)

hh1 = axes('position',[.175 0.2 .25 .25]);
m_pcolor(lon1,lat1,bbpa1)
caxis([-2,2])
hold on
m_scatter(lon_fsle1(fsle1'<-0.1),lat_fsle1(fsle1'<-0.1),1,[61/255 145/255 64/255],'filled');
m_coast('patch','k','linewidth',0.05);
m_grid('linestyle','none','fontsize',10,'ytick',[12:3:24],'xtick',[55:5:65]);
m_text(53,25,'(c)','fontsize',15,'FontName','Arial');
title('C_{Phyto} Anomaly','FontSize',15)

hh1 = axes('position',[.35 0.2 .25 .25]);
m_pcolor(lon1,lat1,ccratioa1);
caxis([-2,2])
hold on
m_scatter(lon_fsle1(fsle1'<-0.1),lat_fsle1(fsle1'<-0.1),1,[61/255 145/255 64/255],'filled');
m_coast('patch','k','linewidth',0.05);
m_grid('linestyle','none','fontsize',10,'ytick',[12:3:24],'xtick',[55:5:65]);
m_text(53,25,'(d)','fontsize',15,'FontName','Arial');
title('{\theta} Anomaly','FontSize',15)

ch = colorbar('horiz');
set(ch,'position',[0.175 0.15 0.25 0.0075],'ticklength',0.015,'fontsize',10,'FontName','Arial','ytick',-2:2:2) % colorbar的位置，[左 下 宽 高]

%% case 2
hh1 = axes('position',[.65 0.675+0.06 .2 .2]);
m_proj('miller','lat',[-30 -25],'long',[235 -116+360],'direction','vertical','aspect',.5)
m_pcolor(lon2,lat2,chla2);
caxis([-0.6,0.6])
hold on
m_scatter(lon_fsle2(fsle2'<-0.1),lat_fsle2(fsle2'<-0.1),1,[61/255 145/255 64/255],'filled');
m_coast('patch','k','linewidth',0.0005);
m_grid('linestyle','none','fontsize',10);
m_text(235,-24.5,'(e)','fontsize',15,'FontName','Arial');
title('Chl Anomaly','FontSize',15)

hh1 = axes('position',[.65 0.4+0.06 .2 .2]);
m_pcolor(lon2,lat2,bbpa2)
caxis([-.6,.6])
hold on
m_scatter(lon_fsle2(fsle2'<-0.1),lat_fsle2(fsle2'<-0.1),1,[61/255 145/255 64/255],'filled');
m_coast('patch','k','linewidth',0.05);
m_grid('linestyle','none','fontsize',10);
m_text(235,-24.5,'(f)','fontsize',15,'FontName','Arial');
title('C_{Phyto} Anomaly','FontSize',15)

hh1 = axes('position',[.65 0.125+0.06 .2 .2]);
m_pcolor(lon2,lat2,ccratioa2);
caxis([-0.6,0.6])
hold on
m_scatter(lon_fsle2(fsle2'<-0.1),lat_fsle2(fsle2'<-0.1),1,[61/255 145/255 64/255],'filled');
m_coast('patch','k','linewidth',0.05);
m_grid('linestyle','none','fontsize',10);
m_text(235,-24.5,'(g)','fontsize',15,'FontName','Arial');
title('{\theta} Anomaly','FontSize',15)

ch = colorbar;
set(ch,'position',[0.875 0.3+0.06 0.0075 0.4],'ticklength',0.015,'fontsize',10,'FontName','Arial','ytick',-0.6:0.6:0.6) % colorbar的位置，[左 下 宽 高]

%% 
clearvars -except qq

annotation('line', [0.08 0.025], [0.755 0.5], 'LineStyle', '--','linewidth',1,'color',[100 100 100]./255);
annotation('line', [0.025 0.565], [0.5 0.5], 'LineStyle', '--','linewidth',1,'color',[100 100 100]./255);
annotation('line', [0.025 0.565], [0.1 0.1], 'LineStyle', '--','linewidth',1,'color',[100 100 100]./255);
annotation('line', [0.025 0.025], [0.5 0.1], 'LineStyle', '--','linewidth',1,'color',[100 100 100]./255);
annotation('line', [0.565 0.565], [0.1 0.5], 'LineStyle', '--','linewidth',1,'color',[100 100 100]./255);

annotation('line', [0.32 0.6], [0.67 0.975], 'LineStyle', '--','linewidth',1,'color',[100 100 100]./255);
annotation('line', [0.6 0.925], [0.975 0.975], 'LineStyle', '--','linewidth',1,'color',[100 100 100]./255);
annotation('line', [0.6 0.925], [0.1 0.1], 'LineStyle', '--','linewidth',1,'color',[100 100 100]./255);
annotation('line', [0.6 0.6], [0.1 0.975], 'LineStyle', '--','linewidth',1,'color',[100 100 100]./255);
annotation('line', [0.925 0.925], [0.1 0.975], 'LineStyle', '--','linewidth',1,'color',[100 100 100]./255);


print('fig1.tiff','-r2000','-dtiff');



