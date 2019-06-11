clc;clear all;close all;
%Removed Resampling
XTrain = {};
YTrain = {};
M = csvread('labled_ph.csv',1,0);
Ydistress = [];
Ynormal = [];
d = 1;
n = 1;
for i=1:length(M)
    if M(i,3)==1
        Ydistress(d) = M(i,1);
        d = d +1;
    end
    if M(i,3)==0 && n < 57
        Ynormal(n) = M(i,1);
        n = n+1;
    end
end
c = 1;
for i1=1:20
    data1 = [csvread('dataset/'+ string(Ynormal(i1)) + '.csv',2,1)];
    y1=[];
    for i2=1:length(data1)
        y1=[y1,"normal"];
    end
    YTrain(c) = {categorical(y1)};
    XTrain(c) = {data1.'};
    c = c+1
    data2 = [csvread('dataset/'+ string(Ydistress(i1)) + '.csv',2,1)];
    y2=[];
    for i=1:length(data2)
        y2=[y2,"distress"];
    end
    YTrain(c) = {categorical(y2)};
    XTrain(c) = {data2.'};
    c = c+1
end
%%
numFeatures = 2;
numHiddenUnits = 350;
numClasses = 2;

layers = [ ...
    sequenceInputLayer(numFeatures)
    lstmLayer(numHiddenUnits,'OutputMode','sequence')
    fullyConnectedLayer(20)
    fullyConnectedLayer(5)
    fullyConnectedLayer(numClasses)
    softmaxLayer
    classificationLayer];
options = trainingOptions('adam', ...
    'MaxEpochs',55, ...
    'GradientThreshold',2, ...
    'Verbose',0, ...
    'Plots','training-progress');
net = trainNetwork(XTrain,YTrain,layers,options);
%%
load dual_layer_model
[YPred,scores] = classify(net,XTrain);
acc = sum([YPred{:}] == [YTrain{:}])./numel([YTrain{:}])
[m,order] = confusionmat([YTrain{:}],[YPred{:}])