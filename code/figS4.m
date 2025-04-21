clear;clc;
load('figS4.mat');
qq = figure;
set(gcf, 'units', 'normalized','position',[.1 .1 .55 .3]);
%% a
hh1 =  axes('position',[.01 0.15 .25 .75]);
x = linspace(30,390,180);
y = linspace(-90,90,90);
m_proj('hammer','lat',[-90 90],'long',[30 390],'direction','vertical','aspect',.5);
m_pcolor(x,y,H2);
cm = (nclCM(148,21));
cm = [[220,220,220]./255;cm];
colormap(hh1,cm(1:end-3,:));
caxis([-335 300])
m_coast('patch','k','linewidth',0.5);
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);
title('All time','fontsize',12,'FontName','Arial');
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3)+0.1,'(a)','fontsize',15,'FontName','Arial');
%% b
hh1 =  axes('position',[.31 0.15 .25 .75]);
m_pcolor(x,y,H22); 
shading flat; 

cm = (nclCM(148,20));
cm = [[220,220,220]./255;cm];
colormap(hh1,cm(1:end-3,:));
caxis([-335 300])
m_coast('patch','k','linewidth',0.5);
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);
title('Summer','fontsize',12,'FontName','Arial');
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3)+0.1,'(b)','fontsize',15,'FontName','Arial');
%% c
hh1 =  axes('position',[.01+0.6 0.15 .25 .75]);
m_pcolor(x,y,H222);
cm = (nclCM(148,20));
cm = [[220,220,220]./255;cm(2:end,:)];
colormap(hh1,cm);
caxis([-340 300])
m_coast('patch','k','linewidth',0.5);
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);
title('Winter','fontsize',12,'FontName','Arial');
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3)+0.1,'(c)','fontsize',15,'FontName','Arial');
ch = colorbar();
set(ch,'position',[0.89 0.325 0.01 .39],'ticklength',0.015,'fontsize',10,'FontName','Arial','ytick',linspace(-300,300,3)) % colorbar的位置，[左 下 宽 高]
set(get(ch,'title'),'string','m','fontsize',10,'FontName','Arial');

print(qq,'figS4.tiff','-r2000','-dtiff');
