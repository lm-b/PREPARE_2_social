# PREPARE_2_social
code used for the PREPARE Challenge - Phase 2: Model Arena (Social Determinants Track) hosted by the National Institute on Aging via Driven Data


## Files 
* ViewRawData.R: code written in R using ggplot and gridExtra packages to view relationships between individual features and the target variable (composite cognitive score)
* scikit_models.py: Code written in python using scikit-learn and supporting packages (e.g. pandas, numpy) to create and train models used in the main file.
* train_scikit.py: Main training file for scikit-learn (statistical machine learning) models. Cleans raw data, creates train/val splits, and calls training functions from scikit_models.py. Aggregates results, chooses the result with the best rmse and applies it to the test set, then formats the resulting target predictions for submission.

