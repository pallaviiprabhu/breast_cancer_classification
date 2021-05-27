%%
%discriminant analysis
%the model
disp("DISCRIMINANT ANALYSIS");
discr_analysis = fitcdiscr(x_train,y_train,'OptimizeHyperparameters','all');
%%
%predicting the test values
prediction_disc = predict(discr_analysis,x_test);
test_acc_disc = (sum(prediction_disc == table2array(y_test))/height(y_test));

%%
%other metrics
predictedY_disc = resubPredict(discr_analysis);
cm_disc = confusionchart(table2array(y_train),predictedY_disc);
cm_disc.Title = 'Discriminant Analysis';
tp = sum((predictedY_disc == 1) & (table2array(y_train) == 1));
fp = sum((predictedY_disc == 1) & (table2array(y_train) == 0));
fn = sum((predictedY_disc == 0) & (table2array(y_train) == 1));

precision_disc = tp / (tp + fp);
recall_disc = tp / (tp + fn);
F1_disc = (2 * precision_disc * recall_disc) / (precision_disc + recall_disc);
train_acc_disc = (sum(predictedY_disc == table2array(y_train))/height(y_train));

