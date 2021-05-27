%decision_tree
disp("DECISION TREE");
ctree = fitctree(x_train,y_train,'OptimizeHyperparameters','all');

%%
%evaluation on the test set
prediction_tree = predict(ctree,x_test);
test_acc_tree = (sum(prediction_tree == table2array(y_test))/height(y_test));

%%
%other metrics
predictedY_tree = resubPredict(ctree);

cm_ctree = confusionchart(table2array(y_train),predictedY_tree);
cm_ctree.Title = 'Decision Tree';

tp = sum((predictedY_tree == 1) & (table2array(y_train) == 1));
fp = sum((predictedY_tree == 1) & (table2array(y_train) == 0));
fn = sum((predictedY_tree == 0) & (table2array(y_train) == 1));

precision_tree = tp / (tp + fp);
recall_tree = tp / (tp + fn);
F1_tree = (2 * precision_tree * recall_tree) / (precision_tree + recall_tree);
train_acc_tree = (sum(predictedY_tree == table2array(y_train))/height(y_train));
