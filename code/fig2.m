clear;clc;
load('fig2.mat')
qq = figure;
set(gcf, 'units', 'normalized','position',[.1 .1 .4 .7]);
%% fig2a
hh1 = axes('position',[.1 0.65 .3 .3]);
axis ([0 1 -0.02 0.02]);
hold on
fill([0:0.01:1,fliplr(0:0.01:1)],[carbon_fit+carbon_fit_eb,fliplr(carbon_fit-carbon_fit_eb)],[127/255 255/255 0/255],'EdgeColor','none','facealpha',0.5);
hold on
h2 = plot(0:0.01:1,carbon_fit,'Color',[61/255 145/255 64/255],'linewidth',2)
hold on;

fill([0:0.01:1,fliplr(0:0.01:1)],[ccratio_fit+ccratio_fit_eb,(fliplr(ccratio_fit-ccratio_fit_eb))],[255/255,198/255,178/255],'EdgeColor','none','facealpha',0.5);
hold on
h3 = plot(0:0.01:1,ccratio_fit,'Color',[251/255,66/255,0/255],'linewidth',2)
hold on;
plot([0,2],[0 0],'k--');

fill([0:0.01:1,fliplr(0:0.01:1)],[chl_fit+chl_fit_eb,fliplr(chl_fit-chl_fit_eb)],[196/255 204/255 247/255],'EdgeColor','none','facealpha',0.5);
hold on
h1 = plot(0:0.01:1,chl_fit,'Color',[55/255 88/255 224/255],'linewidth',2)
hold on;
plot([0,2],[0 0],'k--');
plot([0.1 0.1], [-0.2 2],'linestyle','--','color',[100 100 100]./255)

xlabel('E_{a} (m^2 s^{-2})','FontSize',10)
ylegend = ylabel('Lagrangian variation rate\newline               (day^{-1})','FontSize',10)
set(ylegend, 'position', get(ylegend,'position')+[0.1,0,0]);

lgd = legend([h2,h1,h3],'r_{C_{Phyto}}','r_{Chl}','r_{\theta}');
box on
set(lgd,'Box','off','Location','northwest','FontSize',10);
lgd.ItemTokenSize = [8,4];
LA = axis;
set(hh1,'FontSize',10,'FontName','Arial');
text((LA(2)-LA(1))*0.0+LA(1)-0.1,(LA(4)-LA(3))*1.1+LA(3)+0.0017,'(a)','fontsize',15,'FontName','Arial');
title('Global','FontSize',12,'FontName','Arial')
set(hh1,'XTick',0:0.2:1);
set(hh1,'YTick',-0.02:0.01:0.02);
hh1.YAxis.Exponent = -2;


%% b
hh1 = axes('position',[.1 0.225 .3 .3]);
bar(center_carbon(1:end-1),carbon_counter,'EdgeColor','none','FaceColor',[61/255 145/255 64/255]);
hold on
bar(center_chl(1:end-1),chl_counter,'EdgeColor','none','FaceColor',[55/255 88/255 224/255]);
xlim([-0.01,0.01])
ylim([0,2.2e07])
ylabel('Countdensity')
xlabel('Lagrangian variable rate(day^{-1})')
lgd = legend('r_{C_{Phyto}}','r_{Chl}')
set(lgd,'Box','off','Location','northwest','FontSize',10);
lgd.ItemTokenSize = [8,4];

set(hh1,'FontSize',10,'FontName','Arial');
xlabel('Lagrangian variation rate\newline               (day^{-1})')
LA = axis;
text((LA(2)-LA(1))*0.0+LA(1)*1-0.002,(LA(4)-LA(3))*1.1+LA(3),'(b)','fontsize',15,'FontName','Arial');
set(hh1,'XTick',-0.01:0.005:0.01);
set(hh1,'YTick',0:1.1e07:2.2e07);
title('E_a>0.1m^2s^-^2','fontsize',12,'FontName','Arial');
%% c
h1 = axes('position',[.475 1.05-0.32 .42 .25]);
x = linspace(30,390,180);
y = linspace(-90,90,90);
m_proj('hammer','lat',[-90 90],'long',[30 390],'direction','vertical','aspect',.5);
m_pcolor(x,y,H2*1000);
caxis([-0.15 3.5])
m_coast('patch','k','linewidth',0.5,'edgecolor','k'); 
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);
title('r_{Chl}','fontsize',12,'FontName','Arial');
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3)+0.1,'(c)','fontsize',15,'FontName','Arial');
ch = colorbar;
set(ch,'position',[0.925 0.75 0.01 .2],'ticklength',0.015,'fontsize',10,'FontName','Arial','ytick',[0:1.75:3.5]) 
set(get(ch,'title'),'string','×10^{-3} day^{-1}','fontsize',10,'FontName','Arial');
cm = (nclCM(169,21));
cm = [[220,220,220]./255;cm];
colormap(h1,cm);
%% d
h3 = axes('position',[.475 .45 .42 .25]);
m_proj('hammer','lat',[-90 90],'long',[30 390],'direction','vertical','aspect',.5); 
m_pcolor(x,y,H3*1000);

caxis([-0.15 3.5])
m_coast('patch','k','linewidth',0.5,'edgecolor','k'); 
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);
title('r_{C_{Phyto}}','fontsize',12,'FontName','Arial');
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3)+0.1,'(d)','fontsize',15,'FontName','Arial');
ch = colorbar;
set(ch,'position',[0.925 .47 0.01 .2],'ticklength',0.015,'fontsize',10,'FontName','Arial','ytick',[0:1.75:3.5]) 
set(get(ch,'title'),'string','×10^{-3} day^{-1}','fontsize',10,'FontName','Arial');
cm = (nclCM(169,21));
cm = [[220,220,220]./255;cm];
colormap(h3,cm);

%% e
h4 = axes('position',[.475 0.17 .42 .25]);
m_proj('hammer','lat',[-90 90],'long',[30 390],'direction','vertical','aspect',.5);
m_pcolor(x,y,H4*1000);
caxis([-3.3,3])
m_coast('patch','k','linewidth',0.5,'edgecolor','k'); 
m_grid('linestyle','none','fontsize',6,'FontName','Arial','xtick',[],'ytick',[]);
title('r_{\theta}','fontsize',12,'FontName','Arial');
ch = colorbar;
LA=axis;
text((LA(2)-LA(1))*0.0+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(e)','fontsize',15,'FontName','Arial');
set(ch,'position',[0.925 .19 0.01 .2],'ticklength',0.015,'fontsize',10,'FontName','Arial','ytick',[-3 0 3]) 


set(get(ch,'title'),'string','×10^{-3} day^{-1}','fontsize',10,'FontName','Arial');
cm = (nclCM(148,21));
cm = [[220,220,220]./255;cm];
colormap(h4,cm);
print(qq,'fig2.tiff','-r2000','-dtiff');


