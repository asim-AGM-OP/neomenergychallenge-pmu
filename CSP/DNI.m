x2=inputsolar6
t2=targetSolar6 %%target DNI
net2 = feedforwardnet;
net2 = fitnet(25);
net2.trainParam.epochs = 1000; %Maximum number of epochs to train
net2.divideParam.trainRatio = 70/100;
net2.divideParam.valRatio = 15/100;
net2.divideParam.testRatio = 15/100;

net2.trainParam.max_fail = 1000;  %validation check
net2.trainParam.min_grad=1e-7;
net2.trainParam.show=10;
net2.trainParam.lr=0.001;
net2.trainParam.epochs=1000; % itteration
net2.trainParam.goal=0.001; % goal error

net2= train(net2,x2,t2);
view(net2)
y2= net2(x2);
plot(y2,'red')
hold on
plot(t2,'blue')

RMSE = sqrt(mean((net2(x2) - t2).^2))



