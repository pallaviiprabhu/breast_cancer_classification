# breast_cancer_classification
A Matlab project to perform breast cancer tumor classification as benign or malignant
<h2>Problem Statement</h2>
<p>
This project aims to predict whether the cancer tumor of the patient is benign or malignant using classification algorithms in the machine learning toolbox of Matlab.
	The dataset is a collection of 3 csv files, which contains data about patients who have recovered, died and are still undergoing treatment. We aim to combine from all these three datasets and predict if the tumor is cancerous.
	All these datasets contain 30 variables, out of which 4 are numerical variables and the rest are categorical. They contain 1134 rows, all combined in total. The columns contain information about the patient like gender, education, age, weight, thickness of the tumor, pregnancy, menopausal age and other important parameters related to a cancer patient. The dataset contains around 10% of null values.
</p>

<h2>Description of the files:</h2>
<p>
 preprocessing.m : Preprocessing the input data <br>
 data_vis.mlx : Visualising the data <br>
 ml_input_data.m : Data split into test and train sets <br>
 discrminant_analysis.m : Train the classification model discriminant analysis <br>
 decision_tree.m : Train the classification model decision tree  <br>
 knn.m : Train K Nearest Neighbours on the data <br>
 svm.m : Train SVM on the model <br>
 model_outputs.m: Output of the metrics of all the model <br>
  <p>

<h2>Steps to run the files: </h2>
<p>
  1. Load all the files into a single folder <br>
  2. Run "preprocessing.m" to preprocess data for training and visualising <br>
  3. Run "data_vis.mlx" to visualise the input data <br>
  4. Run "ml_input_data.m" to get the data for testing and training <br>
  5. Then run the files "discriminant_analysis.m", "decision_tree.m",
       "svm.m","knn.m" (in no particular order) to train all the models <br>
  6. Run "model_outputs.m" to get the metrics of the trained models <br>
  </p>
