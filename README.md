# PREPARE_2_social
code used for the PREPARE Challenge - Phase 2: Model Arena (Social Determinants Track) hosted by the National Institute on Aging via Driven Data


## Files 
* ViewRawData.R: code written in R using ggplot and gridExtra packages to view relationships between individual features and the target variable (composite cognitive score)
* scikit_models.py: Code written in python using scikit-learn and supporting packages (e.g. pandas, numpy) to create and train models used in the main file.
* train_scikit.py: Main training file for scikit-learn (statistical machine learning) models. Cleans raw data, creates train/val splits, and calls training functions from scikit_models.py. Aggregates results, chooses the result with the best rmse and applies it to the test set, then formats the resulting target predictions for submission.
* manipulateSavedModels.py: File used to extract the features used for each best model and the weights assigned to those features to assess feature importance for interpretation. 

## Folders 
* /two_year: model and train files designed around data transformed to predict both 2016 and 2021 scores for every uid.
* /year_and_score: model and train files designed around target file including a column of years and a column of scores
* /score_only: model and train files designed around score prediction only (no year)
* /two_model: DIY bag model; train all models on only one target year, combine predictions from each model in final predictions

## Results
Best results obtained: 
* two-year
  * *test rmse*: 40.007  ||   *model*: pls+Lasso  ||   *features*:  top 4 features of the decomposed space | all features
* year-and-score
  * *test rmse*:   ||   *model*:   ||   *features*:  
* score-only
  * *test rmse*: 40.966   ||   *model*: Lasso   ||   *features*:  feature set reduced by removing features with >80% nan, <4% absolute correlation with target
* two_model: 
  * *test rmse* : 40.8529   ||   *model*: 21-linear SVR | 16-Lasso   ||   *features*:  feature set reduced by removing features with >80% nan, <4% absolute correlation with target

## Interpretation
### Feature reduction/selection

### Model efficacy


## Code info
Code was developed using 
* Windows 10
* Python 3.8 (Anaconda distribution, Spyder 5.5.1)
  * NumPy 1.24.3
  * Pandas 2.03
  * scikit-learn 1.3.0
* R 3.6.2 (Rstudio)
  * ggplot 3.2.1
  * gridExtra 2.3
