data = xlsread('D:\PMU (MSME)\NEOM Project\windturbine\data for wt ai.xlsx'); % import data
%% splitting data
% training
xt = data(1:1825, 1:4);
yt = data(1:1825, 5);
% testing
xts = data(1826: end, 1:4);
yts = data(1826: end, 5);

%%svr
MDL = fitrsvm(xt,yt,'Standardize',true,'KernelFunction','gaussian');
p = predict(MDL,xts);
rmse = sqrt(mean((p-yts).^2))

plot(p,'r')
hold on
plot(yts,'b')

