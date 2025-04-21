clear;clc;
load('figS2.mat')

qq = figure;
set(gcf, 'units', 'normalized','position',[.1 .1 .6 .7]);
%% a
h6 = axes('position',[.1 0.67 0.18 0.27]);
hold on
fill([0:0.01:1,fliplr(0:0.01:1)],[carbon_bd_w+carbon_eb_bd_w,fliplr(carbon_bd_w-carbon_eb_bd_w)],[127/255 255/255 0/255],'EdgeColor','none','facealpha',0.5);
hold on
h2 = plot(0:0.01:1,carbon_bd_w,'Color',[61/255 145/255 64/255],'linewidth',2)
hold on;
axis ([0 1 -0.025 0.025]);

fill([0:0.01:1,fliplr(0:0.01:1)],[ccratio_bd_w+ccratio_eb_bd_w,(fliplr(-ccratio_eb_bd_w+ccratio_bd_w))],[255/255,198/255,178/255],'EdgeColor','none','facealpha',0.5);
hold on
h3 = plot(0:0.01:1,ccratio_bd_w,'Color',[251/255,66/255,0/255],'linewidth',2)
hold on;
plot([0,2],[0 0],'k--');

fill([0:0.01:1,fliplr(0:0.01:1)],[chl_bd_w+chl_eb_bd_w,fliplr(chl_bd_w-chl_eb_bd_w)],[196/255 204/255 247/255],'EdgeColor','none','facealpha',0.5);
hold on
h1 = plot(0:0.01:1,chl_bd_w,'Color',[55/255 88/255 224/255],'linewidth',2)
hold on;

hold on;
xlabel('E_a(m^2 s^{-2})','FontName','Arial','FontSize',10)
ylegend = ylabel('Lagrangian variation rate\newline               (day^{-1})','FontName','Arial','FontSize',10)
set(ylegend, 'position', get(ylegend,'position')+[0.1,0,0]);
plot([0.084 0.084], [-0.2 2],'linestyle','--','color',[100 100 100]./255)

lgd = legend([h2,h1,h3],'r_{C_{Phyto}}','r_{Chl}','r_{\theta}');
box on
set(lgd,'Box','off','Location','Southwest','FontSize',10,'FontName','Arial');
lgd.ItemTokenSize = [8,4];
box on
set(h6,'FontSize',10,'FontName','Arial','xtick',[0:0.2:1]);
title('            Biomass-Dominated Region','FontSize',10,'FontName','Arial')
LA = axis;
text((LA(2)-LA(1))*0.0+LA(1)-0.25,(LA(4)-LA(3))*1.1+LA(3),'(a)','fontsize',15,'FontName','Arial');
text(0.1,0.02,'winter','fontsize',12,'FontName','Arial');
set(h6,'yTick',-0.025:0.0125:0.025);
h6.YAxis.Exponent = -2;
%% b
h7 = axes('position',[.33 0.67 0.18 0.27]);
hold on
fill([0:0.01:1,fliplr(0:0.01:1)],[carbon_nbc_w+carbon_eb_nbc_w,fliplr(carbon_nbc_w-carbon_eb_nbc_w)],[127/255 255/255 0/255],'EdgeColor','none','facealpha',0.5);
hold on
h2 = plot(0:0.01:1,carbon_nbc_w,'Color',[61/255 145/255 64/255],'linewidth',2)
hold on;
axis ([0 1 -0.03 0.03]);

fill([0:0.01:1,fliplr(0:0.01:1)],[ccratio_nbc_w+ccratio_eb_nbc_w,(fliplr(-ccratio_eb_nbc_w+ccratio_nbc_w))],[255/255,198/255,178/255],'EdgeColor','none','facealpha',0.5);
hold on
h3 = plot(0:0.01:1,ccratio_nbc_w,'Color',[251/255,66/255,0/255],'linewidth',2)
hold on;
plot([0,2],[0 0],'k--');

fill([0:0.01:1,fliplr(0:0.01:1)],[chl_nbc_w+chl_eb_nbc_w,fliplr(chl_nbc_w-chl_eb_nbc_w)],[196/255 204/255 247/255],'EdgeColor','none','facealpha',0.5);
hold on
h1 = plot(0:0.01:1,chl_nbc_w,'Color',[55/255 88/255 224/255],'linewidth',2)
hold on;
plot([0,2],[0 0],'k--');

hold on;
plot([0,2],[0 0],'k--');
axis ([0 1 -0.025 0.025]);
xlabel('E_a(m^2 s^{-2})','FontName','Arial')
box on
set(h7,'FontSize',10,'FontName','Arial');
title('Subtropical Gyres and\newline     Tropical Ocean','FontSize',10,'FontName','Arial') 
LA = axis; 
text((LA(2)-LA(1))*0.0+LA(1)-0.2,(LA(4)-LA(3))*1.1+LA(3),'(b)','fontsize',15,'FontName','Arial');
set(h7,'yTick',-0.025:0.0125:0.025,'xtick',0:0.2:1);
plot([0.0811 0.0811], [-0.2 2],'linestyle','--','color',[100 100 100]./255)
h7.YAxis.Exponent = -2;
text(0.1,0.02,'winter','fontsize',12,'FontName','Arial');
%% c
h9 = axes('position',[.56 0.67 0.18 0.27]);
hold on
fill([0:0.01:1,fliplr(0:0.01:1)],[carbon_bc_w+carbon_eb_bc_w,fliplr(carbon_bc_w-carbon_eb_bc_w)],[127/255 255/255 0/255],'EdgeColor','none','facealpha',0.5);
hold on
h2 = plot(0:0.01:1,carbon_bc_w,'Color',[61/255 145/255 64/255],'linewidth',2)
hold on;
axis ([0 1 -0.025 0.025]);

fill([0:0.01:1,fliplr(0:0.01:1)],[ccratio_bc_w+ccratio_eb_bc_w,(fliplr(-ccratio_eb_bc_w+ccratio_bc_w))],[255/255,198/255,178/255],'EdgeColor','none','facealpha',0.5);
hold on
h3 = plot(0:0.01:1,ccratio_bc_w,'Color',[251/255,66/255,0/255],'linewidth',2)
hold on;
plot([0,2],[0 0],'k--');

fill([0:0.01:1,fliplr(0:0.01:1)],[chl_bc_w+chl_eb_bc_w,fliplr(chl_bc_w-chl_eb_bc_w)],[196/255 204/255 247/255],'EdgeColor','none','facealpha',0.5);
hold on
h1 = plot(0:0.01:1,chl_bc_w,'Color',[55/255 88/255 224/255],'linewidth',2)
hold on;

xlabel('E_a(m^2 s^{-2})','FontName','Arial')
box on
set(h9,'FontSize',10,'FontName','Arial');
title('         Western Boundary Current','FontSize',10,'FontName','Arial')
LA = axis;
text((LA(2)-LA(1))*0.0+LA(1)-0.15,(LA(4)-LA(3))*1.1+LA(3),'(c)','fontsize',15,'FontName','Arial');
set(h9,'xTick',0:0.2:1);
set(h9,'yTick',-0.025:0.0125:0.025);
h9.YAxis.Exponent = -2;
plot([0.134 0.134], [-0.2 2],'linestyle','--','color',[100 100 100]./255)
h2 = plot(0:0.01:1,carbon_bc_w,'Color',[61/255 145/255 64/255],'linewidth',2)
text(0.15,0.02,'winter','fontsize',12,'FontName','Arial');

%% d
h10 = axes('position',[.1 0.275 0.18 0.27]);
hold on
fill([0:0.01:1,fliplr(0:0.01:1)],[carbon_bd_s+carbon_eb_bd_s,fliplr(carbon_bd_s-carbon_eb_bd_s)],[127/255 255/255 0/255],'EdgeColor','none','facealpha',0.5);
hold on
h2 = plot(0:0.01:1,carbon_bd_s,'Color',[61/255 145/255 64/255],'linewidth',2)
hold on;
axis ([0 1 -0.025 0.025]);

fill([0:0.01:1,fliplr(0:0.01:1)],[ccratio_bd_s+ccratio_eb_bd_s,(fliplr(-ccratio_eb_bd_s+ccratio_bd_s))],[255/255,198/255,178/255],'EdgeColor','none','facealpha',0.5);
hold on
h3 = plot(0:0.01:1,ccratio_bd_s,'Color',[251/255,66/255,0/255],'linewidth',2)
hold on;
plot([0,2],[0 0],'k--');

fill([0:0.01:1,fliplr(0:0.01:1)],[chl_bd_s+chl_eb_bd_s,fliplr(chl_bd_s-chl_eb_bd_s)],[196/255 204/255 247/255],'EdgeColor','none','facealpha',0.5);
hold on
h1 = plot(0:0.01:1,chl_bd_s,'Color',[55/255 88/255 224/255],'linewidth',2)
hold on;
xlabel('E_a(m^2 s^{-2})','FontName','Arial')

box on
set(h10,'FontSize',10,'FontName','Arial');
title('            Biomass-Dominated Region','FontSize',10,'FontName','Arial')
LA = axis;
text((LA(2)-LA(1))*0.0+LA(1)-0.25,(LA(4)-LA(3))*1.1+LA(3),'(d)','fontsize',15,'FontName','Arial');
set(h10,'xTick',0:0.2:1);
set(h10,'yTick',-0.025:0.0125:0.025);
h10.YAxis.Exponent = -2;
plot([0.0840 0.084], [-0.2 2],'linestyle','--','color',[100 100 100]./255)
ylegend = ylabel('Lagrangian variation rate\newline               (day^{-1})','FontName','Arial','FontSize',12)
set(ylegend, 'position', get(ylegend,'position')+[0.1,0,0]);
text(0.1,0.02,'summer','fontsize',12,'FontName','Arial');
%% e
h7 = axes('position',[0.33 0.275 0.18 0.27]);
hold on
fill([0:0.01:1,fliplr(0:0.01:1)],[carbon_nbc_s+carbon_eb_nbc_s,fliplr(carbon_nbc_s-carbon_eb_nbc_s)],[127/255 255/255 0/255],'EdgeColor','none','facealpha',0.5);
hold on
h2 = plot(0:0.01:1,carbon_nbc_s,'Color',[61/255 145/255 64/255],'linewidth',2)
hold on;
axis ([0 1 -0.025 0.025]);

fill([0:0.01:1,fliplr(0:0.01:1)],[ccratio_nbc_s+ccratio_eb_nbc_s,(fliplr(-ccratio_eb_nbc_s+ccratio_nbc_s))],[255/255,198/255,178/255],'EdgeColor','none','facealpha',0.5);
hold on
h3 = plot(0:0.01:1,ccratio_nbc_s,'Color',[251/255,66/255,0/255],'linewidth',2)
hold on;
plot([0,2],[0 0],'k--');

fill([0:0.01:1,fliplr(0:0.01:1)],[chl_nbc_s+chl_eb_nbc_s,fliplr(chl_nbc_s-chl_eb_nbc_s)],[196/255 204/255 247/255],'EdgeColor','none','facealpha',0.5);
hold on
h1 = plot(0:0.01:1,chl_nbc_s,'Color',[55/255 88/255 224/255],'linewidth',2)
hold on;
plot([0,2],[0 0],'k--');
xlabel('E_a(m^2 s^{-2})','FontName','Arial')

box on
set(h7,'FontSize',10,'FontName','Arial');
title('Subtropical Gyres and\newline     Tropical Ocean','FontSize',10,'FontName','Arial') 
LA = axis;
text((LA(2)-LA(1))*0.0+LA(1)-0.2,(LA(4)-LA(3))*1.1+LA(3),'(e)','fontsize',15,'FontName','Arial');
set(h7,'yTick',-0.025:0.0125:0.025,'XTick',0:0.2:1);
plot([0.0811 0.0811], [-0.2 2],'linestyle','--','color',[100 100 100]./255)
h7.YAxis.Exponent = -2;
text(0.1,0.02,'summer','fontsize',12,'FontName','Arial');
%% f
h9 = axes('position',[.56 0.275 0.18 0.27]);
hold on
fill([0:0.01:1,fliplr(0:0.01:1)],[carbon_bc_s+carbon_eb_bc_s,fliplr(carbon_bc_s-carbon_eb_bc_s)],[127/255 255/255 0/255],'EdgeColor','none','facealpha',0.5);
hold on
h2 = plot(0:0.01:1,carbon_bc_s,'Color',[61/255 145/255 64/255],'linewidth',2)
hold on;
axis ([0 1 -0.025 0.025]);

fill([0:0.01:1,fliplr(0:0.01:1)],[ccratio_bc_s+ccratio_eb_bc_s,(fliplr(-ccratio_eb_bc_s+ccratio_bc_s))],[255/255,198/255,178/255],'EdgeColor','none','facealpha',0.5);
hold on
h3 = plot(0:0.01:1,ccratio_bc_s,'Color',[251/255,66/255,0/255],'linewidth',2)
hold on;
plot([0,2],[0 0],'k--');

fill([0:0.01:1,fliplr(0:0.01:1)],[chl_bc_s+chl_eb_bc_s,fliplr(chl_bc_s-chl_eb_bc_s)],[196/255 204/255 247/255],'EdgeColor','none','facealpha',0.5);
hold on
h1 = plot(0:0.01:1,chl_bc_s,'Color',[55/255 88/255 224/255],'linewidth',2)

hold on;
plot([0,2],[0 0],'k--');
xlabel('E_a(m^2 s^{-2})','FontName','Arial')
box on
set(h9,'FontSize',10,'FontName','Arial');
title('         Western Boundary Current','FontSize',10,'FontName','Arial')
LA = axis;
text((LA(2)-LA(1))*0.0+LA(1)-0.15,(LA(4)-LA(3))*1.1+LA(3),'(f)','fontsize',15,'FontName','Arial');
set(h9,'xTick',0:0.2:1);
set(h9,'yTick',-0.025:0.0125:0.025);
h9.YAxis.Exponent = -2;
plot([0.1 0.1], [-0.2 2],'linestyle','--','color',[100 100 100]./255)
h2 = plot(0:0.01:1,carbon_bc_s,'Color',[61/255 145/255 64/255],'linewidth',2)
h3 = plot(0:0.01:1,ccratio_bc_s,'Color',[251/255,66/255,0/255],'linewidth',2)
text(0.1,0.02,'summer','fontsize',12,'FontName','Arial');
print(qq,'figS2.tiff','-r2000','-dtiff');

