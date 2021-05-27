%target data (y)
target = req_data(:,("Benign_malignant_cancer"));
%disp(target);

%input data (x)
input = req_data;

input(:,["education","condition","Benign_malignant_cancer"]) = [];
input = normalize( input ); 

%%
%splitting the data into test and train set
len = height(input);
split = round(0.95*len);
x_train = input(1:split,:);
y_train = target(1:split,:);
%disp(size(x_train));
%%
x_test = input(split+1:end,:);
y_test = target(split+1:end,:);
%disp(size(x_test));