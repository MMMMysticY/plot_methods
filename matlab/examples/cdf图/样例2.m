data1=csvread('result_head.csv',1,1,[1,1,410,1]);  %
data2=csvread('result_head.csv',1,2,[1,2,410,2]); %
data3=csvread('result_head.csv',1,3,[1,3,410,3]); %

figure(3);
hold on
h1=cdfplot(data1);
h2=cdfplot(data2);
h3=cdfplot(data3);

legend('信息采集','信息传输', '视频渲染');
set(h1,'LineStyle', '-.','LineWidth',1.5);
set(h2,'LineStyle', '--','LineWidth',1.5);
set(h3,'LineStyle', ':','LineWidth',1.5);

set(gca,'XLim',[0 650]);
set(gca, 'YLim',[0 1]);
set(xlabel('Latency'));
set(ylabel('CDF'));
breakxaxis([65 450]);  %截断横坐标
title('');
box on