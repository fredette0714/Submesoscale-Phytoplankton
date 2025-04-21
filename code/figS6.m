%% 画图Ea
clear;clc;
qq = figure;
set(gcf, 'units', 'normalized','position',[.1 .1 .4 .8]);

%% Ea分布 SAE概率
load('figS6a.mat');
h1 = axes('position',[.05 0.6 .8 .45]);%% 定义子图1的左下角位置和长宽
hold on;
x = linspace(30,390,180);
y = linspace(-90,90,90);

m_proj('miller','lat',[10 60],'long',[110 330],'direction','vertical','aspect',.5); %投影方式及绘图范围设定
m_pcolor(x,y,HH); %画颜色填充图
shading flat;  %去掉网格线

mymap = nclCM(38);
colormap(h1,mymap);
caxis([0 0.06])
m_coast('patch','k','linewidth',0.5);
m_grid('linestyle','none','ytick',[10:25:60],'xtick',[110:110:330]);
title('E_{a}','fontsize',15);
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3)+0.1,'(a)','fontsize',15);
ch = colorbar;
set(ch,'position',[0.9 0.74 0.0075 .175],'ticklength',0.015,'fontsize',10) % colorbar的位置，[左 下 宽 高]
set(get(ch,'title'),'string','m^2 s^{-2}','fontsize',12);
%% 画轨迹 生理学
m_plot(float_lon,float_lat,'k','linewidth',2);
m_text(300,30,'float1','color','k','fontsize',12);
m_line([-70+360,-60+360],[25,25],'linestyle','--','color','m','linewidth',2);
m_line([-70+360,-60+360],[35,35],'linestyle','--','color','m','linewidth',2);
m_line([-70+360,-70+360],[25,35],'linestyle','--','color','m','linewidth',2);
m_line([-60+360,-60+360],[25,35],'linestyle','--','color','m','linewidth',2);

m_line([155,165],[45,45],'linestyle','--','color','m','linewidth',2);
m_line([155,165],[35,35],'linestyle','--','color','m','linewidth',2);
m_line([155,155],[35,45],'linestyle','--','color','m','linewidth',2);
m_line([[165,165]],[35,45],'linestyle','--','color','m','linewidth',2);


load('fig6_float2.mat');
hold on
float_lon(float_lon<0) = 360+float_lon(float_lon<0);
m_plot(float_lon,float_lat,'k','linewidth',2);
m_text(150,30,'float2','color','k','fontsize',12);

%% float1 fsle 
clearvars -except qq
load('figS6b.mat');

h1 = axes('position',[.05 0.47 .225 .2]);%% 定义子图1的左下角位置和长宽
m_proj('miller','lat',[25 35],'long',[-70 -60],'direction','vertical','aspect',.5);

m_pcolor(lon,lat,sg_mean');
hold on
m_coast('patch','w','linewidth',0.5);
m_grid('linestyle','none','ytick',[25:5:35],'xtick',[-70:5:-60]);

caxis([0 1e-05])
m_contour(lon_fsle,lat_fsle,fsle,[-0.2 -0.175 -0.15 -0.125],'color','k')
load('fig6_float1.mat');
m_scatter(float_lon,float_lat,50,'pentagram','m','filled');
LA=axis;
text((LA(2)-LA(1))*-0.1+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(b)','fontsize',15);
title('Float1 S_g','fontsize',12)
ch = colorbar();
set(ch,'position',[0.275 0.47 0.0075 .2],'ticklength',0.015,'fontsize',10,'ytick',linspace(0,1e-5,3)) % colorbar的位置，[左 下 宽 高]
set(get(ch,'title'),'string','s^{-2}');
colormap(nclCM(38));

%% float1 CHL anomaly
h1 = axes('position',[.35 0.47 .225 .2]);%% 定义子图1的左下角位置和长宽
m_pcolor(lon_chl,lat_chl,log10(chl_mean)');
hold on

m_coast('patch','w','linewidth',0.5);
m_grid('linestyle','none','xtick',[-70:5:-60],'ytick',[]);
colormap(nclCM(38));
caxis([-1.5 -0.5])
load('fig6_float1.mat');
m_scatter(float_lon,float_lat,50,'pentagram','m','filled');
LA=axis;
text((LA(2)-LA(1))*-0.1+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(c)','fontsize',15);
title('Float1 Chl','fontsize',12)
ch = colorbar();
set(ch,'position',[0.575 0.47 0.0075 .2],'ticklength',0.015,'fontsize',10,'ytick',linspace(-1.5,-0.5,3)) % colorbar的位置，[左 下 宽 高]
set(get(ch,'title'),'string','log_{10}(mg m^{-3})');

h1 = axes('position',[.65 0.47 .225 .2]);%% 定义子图1的左下角位置和长宽
m_pcolor(lon_chl,lat_chl,log10(carbon_mean)');
caxis([0.5 1.2])
m_coast('patch','w','linewidth',0.5);
m_grid('linestyle','none','xtick',[-70:5:-60],'ytick',[]);
hold on
m_scatter(float_lon,float_lat,50,'pentagram','m','filled');
text((LA(2)-LA(1))*-0.1+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(d)','fontsize',15);
title('Float1 C_{Phyto}','fontsize',12)
ch = colorbar();
set(ch,'position',[0.9 0.47 0.0075 .2],'ticklength',0.015,'fontsize',10,'ytick',linspace(0.5,1.2,3)) % colorbar的位置，[左 下 宽 高]
set(get(ch,'title'),'string','log_{10}(mg C m^{-3})');

%% float2 fsle 
clearvars -except qq
load('figS6c.mat');

h1 = axes('position',[.05 0.2 .225 .2]);%% 定义子图1的左下角位置和长宽
m_proj('miller','lat',[35 45],'long',[155 165],'direction','vertical','aspect',.5);


m_pcolor(lon,lat,sg_mean'); %20190828
hold on
m_coast('patch','k','linewidth',0.5);
m_grid('linestyle','none','ytick',[35:5:45],'xtick',[155:5:165]);
colormap(nclCM(38));
caxis([0 1e-05])
m_contour(lon_fsle,lat_fsle,fsle,[-0.6 -0.3 -0.2 -0.125],'color','k')

load('fig6_float2.mat');
m_scatter(float_lon(138:150),float_lat(138:150),50,'pentagram','m','filled');
LA=axis;
text((LA(2)-LA(1))*-0.25+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(e)','fontsize',15);
title('Float2 S_g','FontSize',12)
ch = colorbar();
set(ch,'position',[0.275 0.2 0.0075 .2],'ticklength',0.015,'fontsize',10,'ytick',linspace(0,1e-5,3)) % colorbar的位置，[左 下 宽 高]
set(get(ch,'title'),'string','s^{-2}');



%% float2 CHL anomaly
%画图
h1 = axes('position',[.35 0.2 .225 .2]);%% 定义子图1的左下角位置和长宽
m_pcolor(lon_chl,lat_chl,log10(chl_mean));
hold on
m_coast('patch','k','linewidth',0.5);
m_grid('linestyle','none','xtick',[155:5:165],'ytick',[]);
colormap(nclCM(38));
caxis([-1.5 0.5])
load('fig6_float2.mat');
m_scatter(float_lon(138:150),float_lat(138:150),50,'pentagram','m','filled');
LA=axis;
text((LA(2)-LA(1))*-0.1+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(f)','fontsize',15);
title('Float2 Chl','FontSize',12)
ch = colorbar();
set(ch,'position',[0.575 0.2 0.0075 .2],'ticklength',0.015,'fontsize',10,'ytick',linspace(-1.5,0.5,3)) % colorbar的位置，[左 下 宽 高]
set(get(ch,'title'),'string','log_{10}(mg m^{-3})');

h1 = axes('position',[.65 0.2 .225 .2]);%% 定义子图1的左下角位置和长宽
m_proj('miller','lat',[35 45],'long',[155 165],'direction','vertical','aspect',.5);
m_pcolor(lon_chl,lat_chl,log10(carbon_mean));
caxis([0.5,3])
m_coast('patch','k','linewidth',0.5);
m_grid('linestyle','none','ytick',[],'xtick',[155:5:165]);
hold on
m_scatter(float_lon(138:150),float_lat(138:150),50,'pentagram','m','filled');
text((LA(2)-LA(1))*-0.1+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(g)','fontsize',15);
title('Float2 C_{Phyto}','FontSize',12)
ch = colorbar();
set(ch,'position',[0.9 0.2 0.0075 .2],'ticklength',0.015,'fontsize',10,'ytick',linspace(0.5,3,3)) % colorbar的位置，[左 下 宽 高]
set(get(ch,'title'),'string','log_{10}(mg C m^{-3})');
print(qq,'figS6.tiff','-r2000','-dtiff');



