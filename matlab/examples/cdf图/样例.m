% % 
%data1=csvread('M2_result2.csv',1,1,[1,1,10000,1]);  %L3 MSE
%data2=csvread('M2_result2.csv',1,1,[1,1,10000,1]); %soundNet MSE
%data3=csvread('M2_result2.csv',1,1,[1,1,10000,1]); %PANNs MSE
%data4=csvread('M2_result2.csv',1,1,[1,1,10000,1]);  %VGGish MSE
%data5=csvread('M2_result1.csv',1,1,[1,1,10000,1]); %channel_diff MSE

data1=csvread('P_result5.csv',1,2,[1,2,10000,2]);  %L3 MAPE
data2=csvread('P_result4.csv',1,2,[1,2,10000,2]); %soundNet MAPE
data3=csvread('P_result3.csv',1,2,[1,2,10000,2]); %PANNs MAPE
data4=csvread('P_result2.csv',1,2,[1,2,10000,2]); %VGGish MAPE
data5=csvread('P_result1.csv',1,2,[1,2,10000,2]);  %channel_diff MSE
% 
%data1=csvread('LR.csv',1,3,[1,3,9879,3]);  %lr IoU
%data2=csvread('GRU.csv',1,3,[1,3,9879,3]); %gru IoU
%data3=csvread('LSTM.csv',1,3,[1,3,9879,3]); %lstm IoU
%data4=csvread('ratio_data.csv',0,0,[0,0,678,0]); %attn-seq MAPE
%data5=csvread('attn-seq.csv',1,3,[1,3,9879,3]); %attn-seq IoU

figure(5);
hold on
h1=cdfplot(data1);
h2=cdfplot(data2);
h3=cdfplot(data3);
h4=cdfplot(data4);
h5=cdfplot(data5);
legend('L3','soundNet', 'PANNs', 'VGGish', 'Channel-Dff');
set(h1,'LineStyle', '-.','LineWidth',1.5);
set(h2,'LineStyle', '-.','LineWidth',1.5);
set(h3,'LineStyle', ':','LineWidth',1.5);
set(h4,'LineStyle', ':','LineWidth',1.5);
set(h5,'LineStyle', '-.','LineWidth',1.5);
set(gca,'XLim',[0 1.0]);
set(gca, 'YLim',[0 1]);
set(xlabel('MAPE'));
set(ylabel('CDF'));
title('');
box on