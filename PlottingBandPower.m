% Plot the band power as topomap
figure(1), clf; colormap jet 
subplot(1,4,1)
topoplot(powarray,EEG.chanlocs,'numcontour',0,'electrodes','on','shading','interp');
title('\color{red}\fontsize{13} Band power Topomaps')
axis square
set(gca, 'clim',[-11 11],'Position',[0.1 0.008 0.3 1])
colorbar('Location','south','Position',[0.16 0.12 0.2 0.02],'Box','off')
% plot the band power as bar graph
subplot(1,4,[3,4])
bar(powarray,'r','LineWidth',0.2,'LineStyle','none')
set(gca,'Box','off','XTickLabel',{EEG.chanlocs.labels},'Ylim',[0 (max(powarray)+1)])
xlabel('Channels'), ylabel('Absolute power')
axis square
title('\color{red}\fontsize{13} Absolute band power at each channel')S