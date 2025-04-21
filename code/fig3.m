%% figure 3a
clear;clc;
load('fig3.mat')

x = linspace(30,390,360);
y = linspace(-90,90,180);
[x,y] = meshgrid(x,y);

qq = figure;
set(gcf, 'units', 'normalized','position',[.1 .1 .5 .7]);
hh1 = axes('position',[.05 0.6 .425 .35]);
hold on;
m_proj('hammer','lat',[-90 90],'long',[30 390],'direction','vertical','aspect',.5); 
shading flat;  
hh1 = m_pcolor(x',y',mask);
colormap([220,220,220;220,220,220;209,186,116;130,176,210;250,127,111]./255);

m_coast('patch','k','linewidth',0.5);
m_grid('linestyle','none','fontsize',6,'xtick',[],'ytick',[]);
LA1=axis;
text((LA1(2)-LA1(1))*0.0+LA1(1)-0.35,(LA1(4)-LA1(3))*1.1+LA1(3)-0.0015,'(a)','fontsize',15,'FontName','Arial');
title('Regions','fontsize',15,'FontName','Arial');

%% figure 3b
hh1 = axes('position',[.59 1.-0.36 0.335 0.27]);
hold on
fill([0:0.01:1,fliplr(0:0.01:1)],[carbon_fit_bd+carbon_fit_eb_bd,(fliplr(-carbon_fit_eb_bd+carbon_fit_bd))],[127/255 255/255 0/255],'EdgeColor','none','facealpha',0.5);
hold on
h2 = plot(0:0.01:1,carbon_fit_bd,'Color',[61/255 145/255 64/255],'linewidth',2)
hold on;
axis ([0 1 -0.02 0.02]);

fill([0:0.01:1,fliplr(0:0.01:1)],[ccratio_fit_bd+ccratio_fit_eb_bd,fliplr(ccratio_fit_bd-ccratio_fit_eb_bd)],[255/255,198/255,178/255],'EdgeColor','none','facealpha',0.5);
hold on
h3 = plot(0:0.01:1,ccratio_fit_bd,'Color',[251/255,66/255,0/255],'linewidth',2)
hold on
plot([0,2],[0 0],'k--');

fill([0:0.01:1,fliplr(0:0.01:1)],[chl_fit_bd+chl_fit_eb_bd,fliplr(chl_fit_bd-chl_fit_eb_bd)],[196/255 204/255 247/255],'EdgeColor','none','facealpha',0.5);
hold on
h1 = plot(0:0.01:1,chl_fit_bd,'Color',[55/255 88/255 224/255],'linewidth',2)
hold on;
plot([0,2],[0 0],'k--');
plot([0.1 0.1], [-0.2 2],'linestyle','--','color',[100 100 100]./255)


xlabel('E_{a} (m^2 s^{-2})')
ylegend = ylabel('Lagrangian variation rate\newline               (day^{-1})')

lgd = legend([h2,h1,h3],'r_{C_{Phyto}}','r_{Chl}','r_{\theta}');
box on
set(lgd,'Box','off','Location','northwest','FontSize',10);
lgd.ItemTokenSize = [8,4];
LA = axis;
set(hh1,'FontSize',12,'FontName','Arial');
text((LA(2)-LA(1))*0.0+LA(1)-0.1,(LA(4)-LA(3))*1.1+LA(3)+0.0017,'(b)','fontsize',15,'FontName','Arial');
title('      Biomass-Dominated Region','FontSize',15,'FontName','Arial')
set(hh1,'XTick',0:0.2:1);
set(hh1,'YTick',-0.02:0.01:0.02);
hh1.YAxis.Exponent = -2;
%% figure 3c
hh1 = axes('position',[.08 .2 0.335 0.27]);

hold on
fill([0:0.01:1,fliplr(0:0.01:1)],[carbon_fit_nbc+ccratio_fit_eb_nbc,fliplr(carbon_fit_nbc-ccratio_fit_eb_nbc)],[127/255 255/255 0/255],'EdgeColor','none','facealpha',0.5);
hold on
h2 = plot(0:0.01:1,carbon_fit_nbc,'Color',[61/255 145/255 64/255],'linewidth',2)
hold on;
axis ([0 1 -0.02 0.02]);

fill([0:0.01:1,fliplr(0:0.01:1)],[ccratio_fit_nbc+carbon_fit_eb_nbc,(fliplr(-carbon_fit_eb_nbc+ccratio_fit_nbc))],[255/255,198/255,178/255],'EdgeColor','none','facealpha',0.5);
hold on
h3 = plot(0:0.01:1,ccratio_fit_nbc,'Color',[251/255,66/255,0/255],'linewidth',2)
hold on;
plot([0,2],[0 0],'k--');

fill([0:0.01:1,fliplr(0:0.01:1)],[chl_fit_nbc+chl_fit_eb_nbc,fliplr(chl_fit_nbc-chl_fit_eb_nbc)],[196/255 204/255 247/255],'EdgeColor','none','facealpha',0.5);
hold on
h1 = plot(0:0.01:1,chl_fit_nbc,'Color',[55/255 88/255 224/255],'linewidth',2)
hold on;
plot([0,2],[0 0],'k--');


xlabel('E_{a} (m^2 s^{-2})')
ylegend = ylabel('Lagrangian variation rate\newline               (day^{-1})')

LA = axis;
set(hh1,'FontSize',12,'FontName','Arial','box','on');
text((LA(2)-LA(1))*0.0+LA(1)-0.2,(LA(4)-LA(3))*1.1+LA(3)+0.0017,'(c)','fontsize',15,'FontName','Arial');
title('  Subtropical Gyres and\newline        tropical ocean','FontSize',15,'FontName','Arial')
set(hh1,'XTick',0:0.2:1);
set(hh1,'YTick',-0.02:0.01:0.02);
hh1.YAxis.Exponent = -2;
plot([0.1 0.1], [-0.2 2],'linestyle','--','color',[100 100 100]./255)
%% figure 3d
hh1 = axes('position',[.59 0.2 0.335 0.27]);
hold on

fill([0:0.01:1,fliplr(0:0.01:1)],[carbon_fit_bc+carbon_fit_eb_bc,fliplr(carbon_fit_bc-carbon_fit_eb_bc)],[127/255 255/255 0/255],'EdgeColor','none','facealpha',0.5);
hold on
h2 = plot(0:0.01:1,carbon_fit_bc,'Color',[61/255 145/255 64/255],'linewidth',2)
hold on;
axis ([0 1 -0.02 0.02]);

fill([0:0.01:1,fliplr(0:0.01:1)],[ccratio_fit_bc+ccratio_fit_eb_bc,(fliplr(-ccratio_fit_eb_bc+ccratio_fit_bc))],[255/255,198/255,178/255],'EdgeColor','none','facealpha',0.5);
hold on
h3 = plot(0:0.01:1,ccratio_fit_bc,'Color',[251/255,66/255,0/255],'linewidth',2)
hold on;
plot([0,2],[0 0],'k--');

fill([0:0.01:1,fliplr(0:0.01:1)],[chl_fit_bc+chl_fit_eb_bc,fliplr(chl_fit_bc-chl_fit_eb_bc)],[196/255 204/255 247/255],'EdgeColor','none','facealpha',0.5);
hold on
h1 = plot(0:0.01:1,chl_fit_bc,'Color',[55/255 88/255 224/255],'linewidth',2)
hold on;
plot([0,2],[0 0],'k--');



xlabel('E_{a} (m^2 s^{-2})')
ylegend = ylabel('Lagrangian variation rate\newline               (day^{-1})')

set(hh1,'FontSize',12,'FontName','Arial','box','on');
text((LA(2)-LA(1))*0.0+LA(1)-0.1,(LA(4)-LA(3))*1.1+LA(3)+0.0017,'(d)','fontsize',15,'FontName','Arial');
title('  Western Boundary Current','FontSize',15,'FontName','Arial')
set(hh1,'XTick',0:0.2:1);
set(hh1,'YTick',-0.02:0.01:0.02);
hh1.YAxis.Exponent = -2;
plot([0.1 0.1], [-0.2 2],'linestyle','--','color',[100 100 100]./255)

print(qq,'fig3.tiff','-r2000','-dtiff');

