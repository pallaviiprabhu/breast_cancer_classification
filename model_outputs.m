%displaying all the results 
disp("------------------------------------");
%%
%discriminant_analysis
disp("Discriminant Analysis");
disp("Precision :"+precision_disc);
disp("Recall :"+recall_disc);
disp("F1-Score :"+F1_disc);
disp("Training Accuracy :"+train_acc_disc);
disp("Test Accuracy :"+test_acc_disc);
disp("------------------------------------");

%%
%SVM
disp("Support Vector Machine");
disp("Precision :"+precision_svm);
disp("Recall :"+recall_svm);
disp("F1-Score :"+F1_svm);
disp("Training Accuracy :"+train_acc_svm);
disp("Test Accuracy :"+test_acc_svm);
disp("------------------------------------");

%%
%Decision Tree
disp("Decision Trees");
disp("Precision :"+precision_tree);
disp("Recall :"+recall_tree);
disp("F1-Score :"+F1_tree);
disp("Training Accuracy :"+train_acc_tree);
disp("Test Accuracy :"+test_acc_tree);
disp("------------------------------------");

%%
%KNN
disp("K Nearest Neighbours");
disp("Precision :"+precision_knn);
disp("Recall :"+recall_knn);
disp("F1-Score :"+F1_knn);
disp("Training Accuracy :"+train_acc_knn);
disp("Test Accuracy :"+test_acc_knn);
disp("------------------------------------");
