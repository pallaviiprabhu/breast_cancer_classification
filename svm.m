%SVM
disp("SUPPORT VECTOR MACHINE");
csvm = fitcsvm(x_train,y_train,'OptimizeHyperparameters','all');

%%
%testing on the test values
prediction_svm = predict(csvm,x_test);
test_acc_svm = (sum(prediction_svm == table2array(y_test))/height(y_test));

%%
%other metrics
predictedY_svm = resubPredict(csvm);

cm_svm = confusionchart(table2array(y_train),predictedY_svm);
cm_svm.Title = 'Support Vector Machine';

tp = sum((predictedY_svm == 1) & (table2array(y_train) == 1));
fp = sum((predictedY_svm == 1) & (table2array(y_train) == 0));
fn = sum((predictedY_svm == 0) & (table2array(y_train) == 1));

precision_svm = tp / (tp + fp);
recall_svm = tp / (tp + fn);
F1_svm = (2 * precision_svm * recall_svm) / (precision_svm + recall_svm);
train_acc_svm = (sum(predictedY_svm == table2array(y_train))/height(y_train));