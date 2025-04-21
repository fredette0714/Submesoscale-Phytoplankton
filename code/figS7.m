clear;clc;
load('figS7.mat')
%% 画图climatological maps
qq = figure;
set(gcf, 'units', 'normalized','position',[.1 .1 .6 .55]);

%chl
hh1 =  axes('position',[.01 0.3 .25 .5]);
m_proj('hammer','lat',[-90,90],'lon',[30,390]);
m_pcolor(lon1,lat,log10(chl1'))
caxis([-1.2 0.4])
colormap(nclCM(15))
m_coast('patch','k','linewidth',0.5,'edgecolor','k');
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);
title('climatological Chl','fontsize',12,'FontName','Arial');
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3)+0.1,'(a)','fontsize',15,'FontName','Arial');
cb = colorbar('horiz');
set(cb,'Position',[0.025 0.375 0.225,0.015],'xtick',[-1.2:0.4:0.4])
xlabel(cb,'log_{10}(mg m^{-3})','fontsize',10,'FontName','Arial');

%carbon
hh1 =  axes('position',[.31 0.3 .25 .5]);
m_pcolor(lon1,lat,log10(carbon1'))
caxis([0.8 2])
m_coast('patch','k','linewidth',0.5,'edgecolor','k');
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);
title('climatological C_{Phyto}','fontsize',12,'FontName','Arial');
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3)+0.1,'(b)','fontsize',15,'FontName','Arial');
cb = colorbar('horiz');
set(cb,'Position',[0.325 0.375 0.225,0.015],'xtick',[0.8:0.3:2])
xlabel(cb,'log_{10}(mg C m^{-3})','fontsize',10,'FontName','Arial');

%theta
hh1 =  axes('position',[.61 0.3 .25 .5]);
m_pcolor(lon1,lat,log10(theta1'))
caxis([1.6 2.4])
m_coast('patch','k','linewidth',0.5,'edgecolor','k');
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);
title('climatological {\theta}','fontsize',12,'FontName','Arial');
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3)+0.1,'(c)','fontsize',15,'FontName','Arial');
cb = colorbar('horiz');
set(cb,'Position',[0.625 0.375 0.225,0.015],'xtick',[1.6:0.2:2.4])
xlabel(cb,'log_{10}(C)','fontsize',10,'FontName','Arial');

print(qq,'figS7.tiff','-r1000','-dtiff');
