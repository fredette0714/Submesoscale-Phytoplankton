
%% 仿照fig2画图
clear;clc;
load('figS8.mat');
%%
fill([0:0.01:1,fliplr(0:0.01:1)],[yy1+dyy,fliplr(yy1-dyy)],[127/255 255/255 0/255],'EdgeColor','none','facealpha',0.5);
hold on
h2 = plot(0:0.01:1,yy1,'Color',[61/255 145/255 64/255],'linewidth',2)
hold on;

fill([0:0.01:1,fliplr(0:0.01:1)],[yx1+dyx,(fliplr(yx1-dyx))],[255/255,198/255,178/255],'EdgeColor','none','facealpha',0.5);
hold on
h3 = plot(0:0.01:1,yx1,'Color',[251/255,66/255,0/255],'linewidth',2)
hold on;
plot([0,2],[0 0],'k--');

fill([0:0.01:1,fliplr(0:0.01:1)],[y1+dy,fliplr(y1-dy)],[196/255 204/255 247/255],'EdgeColor','none','facealpha',0.5);
hold on
h1 = plot(0:0.01:1,y1,'Color',[55/255 88/255 224/255],'linewidth',2)
hold on;
plot([0,2],[0 0],'k--');
axis ([0 1 -0.02 0.02]);

xlabel('E_{a} (m^2 s^{-2})','FontSize',10)
ylegend = ylabel('Lagrangian variation rate\newline               (day^{-1})','FontSize',10)
plot([0.1 0.1], [-0.2 2],'linestyle','--','color',[100 100 100]./255)

lgd = legend([h2,h1,h3],'r_{C_{Phyto}}','r_{Chl}','r_{\theta}');
box on
set(lgd,'Box','off','Location','northwest','FontSize',10);
lgd.ItemTokenSize = [8,4];
LA = axis;
set(gca,'FontSize',10,'FontName','Arial');
text((LA(2)-LA(1))*0.0+LA(1)-0.1,(LA(4)-LA(3))*1.1+LA(3)+0.0017,'(a)','fontsize',15,'FontName','Arial');
title('Global','FontSize',12,'FontName','Arial')
set(gca,'XTick',0:0.2:1);
set(gca,'YTick',-0.02:0.01:0.02);
gca.YAxis.Exponent = -2;
print('figS8.tiff','-r2000','-dtiff');


