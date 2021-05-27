%KNN 
disp("K NEAREST-NEIGHBOURS");
kcnn=fitcknn(x_train,y_train,'OptimizeHyperparameters','all');

%%
%test set evaluation
prediction_knn = predict(kcnn,x_test);
test_acc_knn = (sum(prediction_knn == table2array(y_test))/height(y_test));

%%
%other metrics
predictedY_knn = resubPredict(kcnn);

cm_knn = confusionchart(table2array(y_train),predictedY_knn);
cm_knn.Title = 'K Nearest Neighbours';

tp = sum((predictedY_knn == 1) & (table2array(y_train) == 1));
fp = sum((predictedY_knn == 1) & (table2array(y_train) == 0));
fn = sum((predictedY_knn == 0) & (table2array(y_train) == 1));

precision_knn = tp / (tp + fp);
recall_knn = tp / (tp + fn);
F1_knn = (2 * precision_knn * recall_knn) / (precision_knn + recall_knn);
train_acc_knn = (sum(predictedY_knn == table2array(y_train))/height(y_train));

