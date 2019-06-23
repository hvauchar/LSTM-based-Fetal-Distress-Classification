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
