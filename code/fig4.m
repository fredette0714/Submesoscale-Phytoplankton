clear,clc
load('fig4.mat');
qq = figure;
set(gcf, 'units', 'normalized','position',[.1 .1 .5 .7]);
%% 4a
ha = axes('position',[.07 1.05-0.32 .335 .25]);
hold on;
m_proj('hammer','lat',[-90 90],'long',[30 390],'direction','vertical','aspect',.5); 
x = linspace(30,390,180);
y = linspace(-90,90,90);
m_pcolor(x,y,H2*1000); 


cm = (nclCM(169,21));
cm = [[220,220,220]./255;cm];
colormap(ha,cm);
caxis([-0.15 3])
m_coast('patch','k','linewidth',0.5,'edgecolor','k');
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);
title('Summer r_{Chl}','fontsize',12,'FontName','Arial');
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3)+0.1,'(a)','fontsize',15,'FontName','Arial');
ch = colorbar;
set(ch,'position',[0.85 0.75 0.01 .20],'ticklength',0.015,'fontsize',10,'FontName','Arial') 
set(get(ch,'title'),'string','×10^{-3} day^{-1}','fontsize',10,'FontName','Arial');

%% 4b
hb = axes('position',[.07 .45 .335 .25]);
m_pcolor(x,y,H3*1000); 
caxis([-0.15 3])
m_coast('patch','k','linewidth',0.5,'edgecolor','k');
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);
title('Summer r_{C_{Phyto}}','fontsize',12,'FontName','Arial');
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3)+0.1,'(b)','fontsize',15,'FontName','Arial');
ch = colorbar;
set(ch,'position',[0.85 .47 0.01 .2],'ticklength',0.015,'fontsize',10,'FontName','Arial') 
set(get(ch,'title'),'string','×10^{-3} day^{-1}','fontsize',10,'FontName','Arial');
cm = (nclCM(169,21));
cm = [[220,220,220]./255;cm];
colormap(hb,cm);
%% 4c
hc = axes('position',[.07 0.17 .335 .25]);
m_pcolor(x,y,H4*1000); 
cm = flipud(nclCM(233));
cm(1,:) = nan(1,3);
caxis([-3.3,3])
m_coast('patch','k','linewidth',0.5,'edgecolor','k');
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);
title('Summer r_{\theta}','fontsize',12,'FontName','Arial');
ch = colorbar;
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(c)','fontsize',15,'FontName','Arial');
set(ch,'position',[0.85 .19 0.01 .20],'ticklength',0.015,'fontsize',10,'FontName','Arial','ytick',[-3 0 3])

set(get(ch,'title'),'string','×10^{-3} day^{-1}','fontsize',10,'FontName','Arial');
cm = (nclCM(148,21));
cm = [[220,220,220]./255;cm];
colormap(hc,cm);
%% 4d
hd = axes('position',[.45 1.05-0.32 .335 .25]);
hold on;
m_proj('hammer','lat',[-90 90],'long',[30 390],'direction','vertical','aspect',.5);
m_pcolor(x,y,H22*1000); 
caxis([-0.15 3])
m_coast('patch','k','linewidth',0.5,'edgecolor','k');
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);
title('Winter r_{Chl}','fontsize',12,'FontName','Arial');
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3)+0.1,'(d)','fontsize',15,'FontName','Arial');
cm = (nclCM(169,21));
cm = [[220,220,220]./255;cm];
colormap(hd,cm);

%% 4e
He = axes('position',[.45 .45 .335 .25]);
m_proj('hammer','lat',[-90 90],'long',[30 390],'direction','vertical','aspect',.5); 
m_pcolor(x,y,H33*1000);


caxis([-0.15 3])
m_coast('patch','k','linewidth',0.5,'edgecolor','k');
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);
title('Winter r_{C_{Phyto}}','fontsize',12,'FontName','Arial');
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3)+0.1,'(e)','fontsize',15,'FontName','Arial');
cm = (nclCM(169,21));
cm = [[220,220,220]./255;cm];
colormap(He,cm);

%% 4f
Hf = axes('position',[.45 0.17 .335 .25]);
hold on;
m_proj('hammer','lat',[-90 90],'long',[30 390],'direction','vertical','aspect',.5); 
m_pcolor(x,y,H44*1000);
 
caxis([-3.3,3])
m_coast('patch','k','linewidth',0.5,'edgecolor','k');
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);
title('Winter r_{\theta}','fontsize',12,'FontName','Arial');
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(f)','fontsize',15,'FontName','Arial');

cm = (nclCM(148,21));
cm = [[220,220,220]./255;cm];
colormap(Hf,cm);


print(qq,'fig4.tiff','-r2000','-dtiff');
