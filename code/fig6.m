clear;clc;
qq = figure
set(gcf, 'units', 'normalized','position',[.1 .0 .5 .475]);
%% 4903274 bx
load('fig6_float1.mat')
load('E:\bgc-argo\code\ZHANGZHENGGUANG\4903274\bgc_all.mat');

hh1 = axes('position',[.075 0.82 .37 .14]);%% 定义子图1的左下角位置和长宽
pcolor(float_time(1:11),-Depth1(1:200),XBG_mean_norm(1:11,1:200)');
shading interp
caxis([-4e-07 4e-07])
colormap(hh1,nclCM(148,10))
hold on
plot(float_time,-mld_tt,'Color','k','LineWidth',2);
xlim([float_time(1)-0.1 float_time(11)+0.1])
set(hh1,'XTick',[float_time(1)-0.1:3:float_time(11)+0.1],'ytick',-200:100:0,'XTickLabel',[],'Fontsize',10)
title('Float1 Horizontal Buoyancy Gradient')
ylim([-200,1])
LA = axis;
text(-(LA(2)-LA(1))*0.15+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(a)','fontsize',15,'FontName','Arial');
ch = colorbar()
set(ch,'position',[0.45 .82 .01 .14],'ytick',linspace(-4e-07,4e-07,3));
set(get(ch,'title'),'string','s^{-2}','fontsize',10,'FontName','Arial');
ylabel('Depth(m)')
%% Float1 n
hh1 = axes('position',[.075 0.82-0.195 .37 .14]);%% 定义子图1的左下角位置和长宽
nitrate1_norm = (nitrate1-min(nanmin(nitrate1)))./(max(nanmax(nitrate1))-min(nanmin(nitrate1)));
pcolor(float_time(1:11),-Depth1(1:200),nitrate1_norm(4:14,1:200)');
shading interp
xlim([float_time(1)-0.1 float_time(11)+0.1])
cm = nclCM(61,20); 
colormap(hh1,cm(1:14,:))
caxis([0.0 0.6])
ylim([-201 1]) 
hold on
plot(float_time,-mld_tt,'Color','k','LineWidth',2);
set(hh1,'XTick',[float_time(1)-0.1:2:float_time(11)+0.1],'xticklabel',[],'ytick',-200:100:0,'Fontsize',10)
title('Float1 Nitrate (Normalized)','FontSize',12);
LA = axis;
text(-(LA(2)-LA(1))*0.15+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(b)','fontsize',15,'FontName','Arial');
ch = colorbar()
set(ch,'position',[0.45 .82-0.195 .01 .14],'ytick',[0.0 0.3 0.6]);
ylabel('Depth(m)')
%% Float1 c 
hh1 = axes('position',[.075 0.82-0.195*2 .37 .14]);%% 定义子图1的左下角位置和长宽
carbon = 13000*(BBP7001*(700/443)-0.00035);
carbon(carbon<0) = 0;
q =log10(carbon);
for i = 1:14
    q(i,:) = smooth(q(i,:),10);
end
pcolor(float_time(1:11),-Depth1(1:200),q(1:11,1:200)');shading interp
xlim([float_time(1)-0.1 float_time(11)+0.1])
colormap(hh1,cm(1:14,:)) 
caxis([0.25 1])
ylim([-200 2]) 
set(hh1,'XTick',[float_time(1)-0.1:3:float_time(11)+0.1],'ytick',-200:100:0,'XTickLabel',[],'Fontsize',10)
hold on
plot(float_time,-mld_tt,'Color','k','LineWidth',2);
title('Float1 C_{Phyto}','FontSize',12)

ch = colorbar()
set(ch,'position',[0.45 0.82-0.195*2 .01 .14],'ytick',linspace(0.25,1,3));
set(get(ch,'title'),'string','log_{10}(mg C m^{-3})','fontsize',10,'FontName','Arial','position',[5,52]);
LA = axis;
text(-(LA(2)-LA(1))*0.15+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(c)','fontsize',15,'FontName','Arial');
ylabel('Depth(m)')
%% Float1 Chl
hh1 = axes('position',[.075 0.82-0.195*3 .37 .14]);%% 定义子图1的左下角位置和长宽
Chl1(Chl1<0)=0;
q =log10(Chl1);
for i = 1:14
    q(i,:) = smooth(q(i,:),10);
end
pcolor(float_time(1:11),-Depth1(1:200),q(1:11,1:200)');
shading interp
xlim([float_time(1)-0.1 float_time(11)+0.1])
cm = nclCM(61,20); 
colormap(hh1,cm(1:14,:)) 
caxis([-1.5 -0.55])
ylim([-200,1])
set(hh1,'XTick',[float_time(1)-0.1:3:float_time(11)+0.1],'ytick',-200:100:0,'XTickLabel',[],'Fontsize',10)
title('Float1 Chl','FontSize',12)
hold on
plot(float_time,-mld_tt,'Color','k','LineWidth',2);
ch = colorbar()
set(ch,'position',[0.45 .82-0.195*3 .01 .14],'ytick',linspace(-1.5,-0.6,3));
set(get(ch,'title'),'string','log_{10}(mg m^{-3})','fontsize',10,'FontName','Arial','position',[5,52]);
LA = axis;
text(-(LA(2)-LA(1))*0.15+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(d)','fontsize',15,'FontName','Arial');
ylabel('Depth(m)')

%% float1 theta
hh1 = axes('position',[.075 0.82-0.195*4 .37 .14]);%% 定义子图1的左下角位置和长宽
carbon = 13000*(BBP7001*(700/443)-0.00035);
carbon(carbon<0) = 0;
ccratio = carbon./Chl1;
q =log10(ccratio);
for i = 1:14
    q(i,:) = smooth(q(i,:),10);
end
pcolor(float_time(1:11),-Depth1(1:200),q(1:11,1:200)');shading interp
xlim([float_time(1)-0.1 float_time(11)+0.1])
colormap(hh1,cm(1:14,:)) 
caxis([1.1 1.7])
ylim([-200 2]) 
set(hh1,'XTick',[float_time(1)-0.1:3:float_time(11)+0.1],'ytick',-200:100:0,'Fontsize',10)
dateaxis('x',6);
hold on
plot(float_time,-mld_tt,'Color','k','LineWidth',2);
title('Float1 {\theta}','FontSize',12);
ch = colorbar()
set(ch,'position',[0.45 0.82-0.195*4 .01 .14],'ytick',linspace(1.1,1.7,3));
set(get(ch,'title'),'string','log_{10}( C)^{-1}','fontsize',10,'FontName','Arial','position',[5,52]);
LA = axis;
text(-(LA(2)-LA(1))*0.15+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(e)','fontsize',15,'FontName','Arial');
ylabel('Depth(m)')

%% 4903274 bx
clearvars -except qq;
clc;

load('fig6_float2.mat')

hh1 = axes('position',[.56 0.82 .37 .14]);%% 定义子图1的左下角位置和长宽
pcolor(float_time(138:155),-Depth1(1:100),XBG_mean_norm(138:155,1:100)');
shading interp
caxis([-4e-07 4e-07])
colormap(hh1,nclCM(148,10))
hold on
plot(float_time,-MLD,'Color','k','LineWidth',2);
xlim([float_time(138)-0.1 float_time(155)+0.1])
set(hh1,'XTick',[float_time(138)-0.1:7:float_time(155)+0.1],'XTickLabel',[],'Fontsize',10)
title('Float2 Horizontal Buoyancy Gradient','FontSize',12);
ylim([-101,1])
LA = axis;
text(-(LA(2)-LA(1))*0.12+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(f)','fontsize',15,'FontName','Arial');
ch = colorbar()
set(ch,'position',[0.935 .82 .01 .14],'ytick',linspace(-4e-07,4e-07,3));
set(get(ch,'title'),'string','s^{-2}','fontsize',10,'FontName','Arial');

%% Float2 n
hh1 = axes('position',[.56 0.82-0.195 .37 .14]);%% 定义子图1的左下角位置和长宽
nitrate1_norm = (nitrate1-min(nanmin(nitrate1(138:155,1:100))))./(max(nanmax(nitrate1(138:155,1:100)))-min(nanmin(nitrate1(138:155,1:100))));
pcolor(float_time(138:155),-Depth1(1:100),nitrate1_norm(138:155,1:100)'*0.5);
shading interp
xlim([float_time(138)-0.1 float_time(155)+0.1])
cm = nclCM(61,20); 
colormap(hh1,cm(1:14,:))
caxis([0.1 0.6])
ylim([-100 1]) 

set(hh1,'XTick',[float_time(138)-0.1:7:float_time(155)+0.1],'xticklabel',[],'Fontsize',10)
hold on
plot(float_time,-MLD,'Color','k','LineWidth',2);
title('Float2 Nitrate (Normalized)','FontSize',12);
LA = axis;
text(-(LA(2)-LA(1))*0.12+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(g)','fontsize',15,'FontName','Arial');
ch = colorbar()
set(ch,'position',[0.935 .82-0.195 .01 .14],'ytick',linspace(0.1,0.6,3));

%% Float2 c 
hh1 = axes('position',[.56 0.82-0.195*2 .37 .14]);%% 定义子图1的左下角位置和长宽
carbon = 13000*(BBP7001*(700/443)-0.00035);
carbon(carbon<0) = 0;
q =log10(carbon);
for i = 138:155
    q(i,:) = smooth(q(i,:),10);
end
pcolor(float_time(138:155),-Depth1(1:100),q(138:155,1:100)');shading interp
xlim([float_time(138)-0.1 float_time(155)+0.1])
colormap(hh1,cm(1:14,:)) 
caxis([0.9 1.8])
ylim([-100 2]) 
set(hh1,'XTick',[float_time(138)-0.1:7:float_time(155)+0.1],'XTickLabel',[],'Fontsize',10);
hold on
plot(float_time,-MLD,'Color','k','LineWidth',2);
title('Float2 C_{Phyto}','FontSize',12);
LA = axis;
text(-(LA(2)-LA(1))*0.12+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(h)','fontsize',15,'FontName','Arial');
ch = colorbar()
set(ch,'position',[0.935 0.82-0.195*2 .01 .14],'ytick',linspace(0.9,1.8,3));
set(get(ch,'title'),'string','log_{10}(mg C m^{-3})','fontsize',10,'FontName','Arial','position',[5,52]);

%% Float1 Chl
hh1 = axes('position',[.56 0.82-0.195*3 .37 .14]);%% 定义子图1的左下角位置和长宽
Chl1(Chl1<0)=0;
q =log10(Chl1);
for i = 138:155
    q(i,:) = smooth(q(i,:),10);
end
pcolor(float_time(138:155),-Depth1(1:100),q(138:155,1:100)');
shading interp
xlim([float_time(138)-0.1 float_time(155)+0.1])
cm = nclCM(61,20); 
colormap(hh1,cm(1:14,:)) 
caxis([-0.9 0.5])
ylim([-101,1])
set(hh1,'XTick',[float_time(138)-0.1:7:float_time(155)+0.1],'XTickLabel',[],'Fontsize',10)
title('Float2 Chl','FontSize',12);
hold on
plot(float_time,-MLD,'Color','k','LineWidth',2);
LA = axis;
text(-(LA(2)-LA(1))*0.12+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(i)','fontsize',15,'FontName','Arial');
ch = colorbar()
set(ch,'position',[0.935 0.82-0.195*3 .01 .14],'ytick',linspace(-0.9,0.5,3));
set(get(ch,'title'),'string','log_{10}(mg m^{-3})','fontsize',10,'FontName','Arial','position',[5,52]);
%% Float1 theta
hh1 = axes('position',[.56 0.82-0.195*4 .37 .14]);%% 定义子图1的左下角位置和长宽
carbon = 13000*(BBP7001*(700/443)-0.00035);
carbon(carbon<0) = 0;
ccratio = carbon./Chl1;
q =log10(ccratio);
for i = 138:155
    q(i,:) = smooth(q(i,:),10);
end
pcolor(float_time(138:155),-Depth1(1:100),q(138:155,1:100)');shading interp
xlim([float_time(138)-0.1 float_time(155)+0.1])
colormap(hh1,cm(1:14,:)) 
caxis([0.85 2.2])
ylim([-100 1]) 
set(hh1,'XTick',[float_time(138)-0.1:7:float_time(155)+0.1],'Fontsize',10)
dateaxis('x',6)
hold on
plot(float_time,-MLD,'Color','k','LineWidth',2);
title('Float2 {\theta}','FontSize',12);
LA = axis;
text(-(LA(2)-LA(1))*0.12+LA(1),(LA(4)-LA(3))*1.1+LA(3),'(j)','fontsize',15,'FontName','Arial');
ch = colorbar()
set(ch,'position',[0.935 0.82-0.195*4 .01 .14],'ytick',linspace(0.9,2.2,3));
set(get(ch,'title'),'string','log_{10}( C^{-1})','fontsize',10,'FontName','Arial','position',[5,52]);
print(qq,'fig6.tiff','-r2000','-dtiff');
