# LSTM-based-Fetal-Distress-Classification
Clinical medical data, especially during pre-labour and labour, consist of multivariate time series of observations. 
While potentially containing a wealth of insights, the data is difficult
to mine effectively, owing to varying length, irregular sampling and missing data. Recurrent
Neural Networks (RNNs), particularly those using Long Short-Term Memory (LSTM)
hidden units, are powerful and increasingly popular models for learning from sequence data.
They effectively model varying length sequences and capture long range dependencies. This
paper presents the study to empirically evaluate the ability of LSTMs to recognize patterns in
multivariate time series of clinical measurements during childbirth that mainly consist of two
vital parameters FHR and UC. Specifically, this paper considers binary classification for
diagnoses, and prior detection of Fetal Distress. A novel Fetal Distress classification
algorithm is proposed for continuous Labour monitoring. The proposed solution employs a
novel architecture consisting of signal resampling and multiple LSTM recurrent neural
networks. First, we establish effectiveness of a simple LSTM network for modelling clinical
data. Then demonstrate a straight forward and effective training strategy in which we
resample training signal of FHR and UC so as to compact training data and then train the
LSTM model with two fully connected layers with the data followed by model evaluation on
various parameters. The proposed LSTM architecture accurately diagnoses fetal distress
cases with classification accuracy 88.21%, Precision 0.89136, F1 score 0.88118.


## Work Flow of Project
![LSTM_reserch](https://user-images.githubusercontent.com/49407332/60726255-ba1e5800-9f58-11e9-9510-4a4ba512c543.png)

## Different Form of RNN Architecture
![rnn_type](https://user-images.githubusercontent.com/49407332/60726258-bab6ee80-9f58-11e9-8c09-9b0dbc80145f.jpg)

## Chosen Architecture
![LSTM_research_archi](https://user-images.githubusercontent.com/49407332/60726254-ba1e5800-9f58-11e9-864d-484c1859ea75.png)

![UC_resampled_legend](https://user-images.githubusercontent.com/49407332/60726249-b8ed2b00-9f58-11e9-8198-0e5a7016a55c.png)
![confusion_matrix](https://user-images.githubusercontent.com/49407332/60726250-b985c180-9f58-11e9-9edd-06d63938f251.png)
![datasample_plot](https://user-images.githubusercontent.com/49407332/60726251-b985c180-9f58-11e9-8322-0ecad4fe7165.png)
![LSTM Layers updated](https://user-images.githubusercontent.com/49407332/60726253-b985c180-9f58-11e9-8c7e-c02203d10bc6.png)

![originalVsResampled](https://user-images.githubusercontent.com/49407332/60726256-ba1e5800-9f58-11e9-9b7a-68f3c826755c.png)
![resample_subplot](https://user-images.githubusercontent.com/49407332/60726257-bab6ee80-9f58-11e9-8f88-1db23afb9f3f.png)

![Traning](https://user-images.githubusercontent.com/49407332/60726259-bb4f8500-9f58-11e9-8b65-c06da8733182.png)
