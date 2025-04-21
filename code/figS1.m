clear;clc;
load('figS1.mat');
C1 = [209,186,116]./255;
C2 = [153,153,153]./255;
C3 = [130,176,210]./255;
C4 = [250,127,111]./255;

GO = bar(1:3,dataset,1,'EdgeColor','none');
hold on


GO(1).FaceColor = C1;
GO(2).FaceColor = C3;
GO(3).FaceColor = C4;

box on
hLegend = legend([GO(1:3)],'Biomass-Dominated Region', 'Subtropical Gyres and tropical ocean','Boundary Current Regions', 'Location', 'northeast','fontsize',10,'FontName','Arial','NumColumns',1);
set(hLegend,'box','off');

ylabel('number')
title('Strong Submesoscale Ageostrophic Motions', 'FontSize',13,'FontName','Arial');
set(gca,'XTick',1:3,'Xticklabel',{'All time','Winter','Summer'},'fontsize',12,'FontName','Arial')
print(gcf,'figS1.tiff','-r2000','-dtiff');
