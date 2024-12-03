# -*- coding: utf-8 -*-
"""
Created on Tue Nov 19 11:37:56 2024


"""

import numpy as np
import pandas as pd
from sklearn.feature_selection import SelectPercentile, r_regression, f_regression, mutual_info_regression
from sklearn.linear_model import Ridge, RidgeCV, Lasso, LassoCV, MultiTaskLasso, ARDRegression, ElasticNet, RANSACRegressor, SGDRegressor
from sklearn.svm import SVR, LinearSVR
from sklearn.kernel_ridge import KernelRidge
from sklearn.neighbors import RadiusNeighborsRegressor
from sklearn.ensemble import RandomForestRegressor
from sklearn.preprocessing import StandardScaler
from sklearn.metrics import mean_squared_error, mean_absolute_error, r2_score
from sklearn.impute import SimpleImputer
from lightgbm import LGBMRegressor
import warnings 

warnings.filterwarnings('ignore')


def train_linear_model(X_train, y_train, mtype='Ridge', random_state=42, select=['none', 100]):
    """
    Train a linear model with preprocessing pipeline
    """
    # Create preprocessing pipeline
    num_imputer = SimpleImputer(strategy='mean')
    cat_imputer = SimpleImputer(strategy='constant', fill_value='MISSING')
    scaler = StandardScaler()
    # feat_used=X_train.columns
    
    # Separate numerical and categorical columns
    num_cols = X_train.select_dtypes(include=['int64', 'float64']).columns
    cat_cols = X_train.select_dtypes(include=['object', 'category']).columns
    
    # Initialize X_processed as None
    X_processed = None
    
    # Process numerical features if they exist
    if len(num_cols) > 0:
        X_num = X_train[num_cols].copy()
        X_num = num_imputer.fit_transform(X_num)
        X_num = scaler.fit_transform(X_num)
        X_num = pd.DataFrame(X_num, columns=num_cols, index=X_train.index)
        X_processed = X_num
    
    # Process categorical features if they exist
    if len(cat_cols) > 0:
        X_cat = X_train[cat_cols].copy()
        X_cat = cat_imputer.fit_transform(X_cat)
        X_cat = pd.DataFrame(X_cat, columns=cat_cols, index=X_train.index)
        X_cat = pd.get_dummies(X_cat, drop_first=True)
        X_processed = X_cat if X_processed is None else pd.concat([X_processed, X_cat], axis=1)
    
    # employ feature selection if indicated
    if select[0]=='r_reg':
        selector1 = SelectPercentile(r_regression, percentile = select[1]).fit(X_processed, y_train['composite_score_2016'])
        selector2 = SelectPercentile(r_regression, percentile = select[1]).fit(X_processed, y_train['composite_score_2021'])
        feat_used=np.union1d(selector1.get_feature_names_out(),selector2.get_feature_names_out()) 
    elif select[0]== 'f_reg':
        selector = SelectPercentile(f_regression, percentile = select[1]).fit(X_processed, y_train['composite_score_2016'])
        selector = SelectPercentile(f_regression, percentile = select[1]).fit(X_processed, y_train['composite_score_2021'])
        feat_used=np.union1d(selector1.get_feature_names_out(),selector2.get_feature_names_out()) 
    elif select[0]== 'mut_info':
        selector = SelectPercentile(mutual_info_regression, percentile = select[1]).fit(X_processed, y_train['composite_score_2016'])
        selector = SelectPercentile(f_regression, percentile = select[1]).fit(X_processed, y_train['composite_score_2021'])
        feat_used=np.union1d(selector1.get_feature_names_out(),selector2.get_feature_names_out()) 
    elif select[0]== 'none':
        selector = 'no selector'
        feat_used=X_processed.columns
    else:
        print('selector not found')
        feat_used=X_processed.columns
    
    
    # Train model
    if mtype == 'Ridge':
        model = Ridge(alpha=4,random_state=random_state)
        model.fit(X_processed[feat_used], y_train)
    elif mtype == 'RidgeCV':
        model = RidgeCV(alphas = (0.1, 1, 4, 7))
        model.fit(X_processed[feat_used], y_train)
    elif mtype== 'RANSAC':
        model = RANSACRegressor(loss='squared_error', random_state=random_state)
        model.fit(X_processed[feat_used], y_train)
    elif mtype== 'SGD':
        model = SGDRegressor(loss='squared_error', random_state=random_state)
        model.fit(X_processed[feat_used], y_train)
        
    
    return {
        'model': model,
        'num_imputer': num_imputer if len(num_cols) > 0 else None,
        'cat_imputer': cat_imputer if len(cat_cols) > 0 else None,
        'scaler': scaler if len(num_cols) > 0 else None,
        'num_cols': num_cols,
        'cat_cols': cat_cols,
        'cols':  feat_used
    }


def train_sparse_model(X_train, y_train, modTyp='Lasso', random_state=42, alph = 30, l1_rat = 0.5, iterz=30,tol=0.01, hyperparms=1e-4):
    """
    Train a sparse (Lasso, ARD Bayesian regression) linear model with preprocessing pipeline for feature reduction
    """
    # Create preprocessing pipeline
    num_imputer = SimpleImputer(strategy='mean')
    cat_imputer = SimpleImputer(strategy='constant', fill_value='MISSING')
    scaler = StandardScaler()
    
    # Separate numerical and categorical columns
    num_cols = X_train.select_dtypes(include=['int64', 'float64']).columns
    cat_cols = X_train.select_dtypes(include=['object', 'category']).columns
    
    # Initialize X_processed as None
    X_processed = None
    
    # Process numerical features if they exist
    if len(num_cols) > 0:
        X_num = X_train[num_cols].copy()
        X_num = num_imputer.fit_transform(X_num)
        X_num = scaler.fit_transform(X_num)
        X_num = pd.DataFrame(X_num, columns=num_cols, index=X_train.index)
        X_processed = X_num
    
    # Process categorical features if they exist
    if len(cat_cols) > 0:
        X_cat = X_train[cat_cols].copy()
        X_cat = cat_imputer.fit_transform(X_cat)
        X_cat = pd.DataFrame(X_cat, columns=cat_cols, index=X_train.index)
        X_cat = pd.get_dummies(X_cat, drop_first=True)
        X_processed = X_cat if X_processed is None else pd.concat([X_processed, X_cat], axis=1)
    
    # Train model
    if modTyp=='Lasso':
        model = Lasso(alpha = alph, random_state=random_state, max_iter=2000, tol=1e-4)
        # model = LassoCV(alpha = alph, random_state=random_state, max_iter=2000, tol=1e-2)
        model.fit(X_processed, y_train)
    elif modTyp=='LassoCV':
        model = LassoCV(cv=10, random_state=random_state,max_iter=2000, tol=1e-5, n_alphas=int(alph*100), selection='random')
        model.fit(X_processed, y_train)
        alph = model.alpha_
    elif modTyp=='MultiTaskLasso':
         model = MultiTaskLasso(alpha = alph, random_state=random_state, max_iter=2000, tol=5e-4)
         model.fit(X_processed, y_train)
    elif modTyp=='Elastic':
        model = ElasticNet(alpha = alph,l1_ratio=l1_rat, random_state=random_state,)
        model.fit(X_processed, y_train)
    elif modTyp=='ARD':
        model = ARDRegression(max_iter=iterz, tol=tol, alpha_1=hyperparms/10, alpha_2=hyperparms, lambda_1=10*hyperparms, lambda_2=hyperparms/20, compute_score=True)
        model.fit(X_processed, y_train)
    
    return {
        'model': model,
        'num_imputer': num_imputer if len(num_cols) > 0 else None,
        'cat_imputer': cat_imputer if len(cat_cols) > 0 else None,
        'scaler': scaler if len(num_cols) > 0 else None,
        'num_cols': num_cols,
        'cat_cols': cat_cols,
        'alpha': alph
    }

def train_sv_model(X_train, y_train, kernel='linear', C=1.0, gamma='auto', tol=0.0001):
    """
    Train a spare (Lasso, ARD Bayesian regression) linear model with preprocessing pipeline for feature reduction
    """
    # Create preprocessing pipeline
    num_imputer = SimpleImputer(strategy='mean')
    cat_imputer = SimpleImputer(strategy='constant', fill_value='MISSING')
    scaler = StandardScaler()
    
    # Separate numerical and categorical columns
    num_cols = X_train.select_dtypes(include=['int64', 'float64']).columns
    cat_cols = X_train.select_dtypes(include=['object', 'category']).columns
    
    # Initialize X_processed as None
    X_processed = None
    
    # Process numerical features if they exist
    if len(num_cols) > 0:
        X_num = X_train[num_cols].copy()
        X_num = num_imputer.fit_transform(X_num)
        X_num = scaler.fit_transform(X_num)
        X_num = pd.DataFrame(X_num, columns=num_cols, index=X_train.index)
        X_processed = X_num
    
    # Process categorical features if they exist
    if len(cat_cols) > 0:
        X_cat = X_train[cat_cols].copy()
        X_cat = cat_imputer.fit_transform(X_cat)
        X_cat = pd.DataFrame(X_cat, columns=cat_cols, index=X_train.index)
        X_cat = pd.get_dummies(X_cat, drop_first=True)
        X_processed = X_cat if X_processed is None else pd.concat([X_processed, X_cat], axis=1)
    
    # Train model
    if kernel=='linear':
        model = LinearSVR(C=C, tol=tol)
        model.fit(X_processed, y_train)
    elif 'poly' in kernel:
        order=int(kernel.split('y')[1])
        kernel='poly'
        model = SVR(kernel=kernel, degree=order, C=C, gamma=gamma, tol=tol)
        model.fit(X_processed, y_train)
    else:
        model = SVR(kernel=kernel, C=C, gamma=gamma, tol=tol)
        model.fit(X_processed, y_train)

    
    return {
        'model': model,
        'num_imputer': num_imputer if len(num_cols) > 0 else None,
        'cat_imputer': cat_imputer if len(cat_cols) > 0 else None,
        'scaler': scaler if len(num_cols) > 0 else None,
        'num_cols': num_cols,
        'cat_cols': cat_cols
    }

def train_kRidge_model(X_train, y_train, kernel='linear', a=1.0, gamma='auto', tol=0.0001):
    """
    Train a spare (Lasso, ARD Bayesian regression) linear model with preprocessing pipeline for feature reduction
    """
    # Create preprocessing pipeline
    num_imputer = SimpleImputer(strategy='mean')
    cat_imputer = SimpleImputer(strategy='constant', fill_value='MISSING')
    scaler = StandardScaler()
    
    # Separate numerical and categorical columns
    num_cols = X_train.select_dtypes(include=['int64', 'float64']).columns
    cat_cols = X_train.select_dtypes(include=['object', 'category']).columns
    
    # Initialize X_processed as None
    X_processed = None
    
    # Process numerical features if they exist
    if len(num_cols) > 0:
        X_num = X_train[num_cols].copy()
        X_num = num_imputer.fit_transform(X_num)
        X_num = scaler.fit_transform(X_num)
        X_num = pd.DataFrame(X_num, columns=num_cols, index=X_train.index)
        X_processed = X_num
    
    # Process categorical features if they exist
    if len(cat_cols) > 0:
        X_cat = X_train[cat_cols].copy()
        X_cat = cat_imputer.fit_transform(X_cat)
        X_cat = pd.DataFrame(X_cat, columns=cat_cols, index=X_train.index)
        X_cat = pd.get_dummies(X_cat, drop_first=True)
        X_processed = X_cat if X_processed is None else pd.concat([X_processed, X_cat], axis=1)
    
    # Train model
    if kernel=='linear':
        model = KernelRidge(alpha = a, kernel=kernel)
        model.fit(X_processed, y_train)
    elif 'poly' in kernel:
        order=int(kernel.split('y')[1])
        kernel='poly'
        model = KernelRidge(alpha = a,kernel=kernel, degree=order )
        model.fit(X_processed, y_train)
    else:
        model = KernelRidge(alpha = a,kernel=kernel)
        model.fit(X_processed, y_train)

    
    return {
        'model': model,
        'num_imputer': num_imputer if len(num_cols) > 0 else None,
        'cat_imputer': cat_imputer if len(cat_cols) > 0 else None,
        'scaler': scaler if len(num_cols) > 0 else None,
        'num_cols': num_cols,
        'cat_cols': cat_cols
    }


def train_lgbm_model(X_train, y_train, boosting_type = 'gbdt', learnRate=0.01, n_est=1000, random_state=42):
    """
    Train a spare (Lasso, ARD Bayesian regression) linear model with preprocessing pipeline for feature reduction
    """
    # # Create preprocessing pipeline
    num_imputer = SimpleImputer(strategy='mean')
    cat_imputer = SimpleImputer(strategy='constant', fill_value='MISSING')
    # scaler = StandardScaler()
    
    # # Separate numerical and categorical columns
    num_cols = X_train.select_dtypes(include=['int64', 'float64']).columns
    cat_cols = X_train.select_dtypes(include=['object', 'category']).columns
    
    # # Initialize X_processed as None
    X_processed = None
    
    # Process numerical features if they exist
    if len(num_cols) > 0:
        X_num = X_train[num_cols].copy()
        X_num = num_imputer.fit_transform(X_num)
        # X_num = scaler.fit_transform(X_num)
        X_num = pd.DataFrame(X_num, columns=num_cols, index=X_train.index)
        X_processed = X_num
    
    # Process categorical features if they exist
    if len(cat_cols) > 0:
        X_cat = X_train[cat_cols].copy()
        X_cat = cat_imputer.fit_transform(X_cat)
        X_cat = pd.DataFrame(X_cat, columns=cat_cols, index=X_train.index)
        X_cat = pd.get_dummies(X_cat, drop_first=True)
        X_processed = X_cat if X_processed is None else pd.concat([X_processed, X_cat], axis=1)
    
    # Train model
    model = LGBMRegressor(learning_rate=learnRate, n_estimators=n_est, random_state=random_state,
     metric='RMSE', verbosity=-1)
    model.fit(X_train, y_train)

    
    return {
        'model': model,
        'num_imputer': num_imputer if len(num_cols) > 0 else None,
        'cat_imputer': cat_imputer if len(cat_cols) > 0 else None,
        'num_cols': num_cols,
        'cat_cols': cat_cols
    }


def train_nonlinear_model(X_train, y_train, random_state=42, select=['none', 100]):
    """
    Train a non-linear model (Random Forest) with preprocessing pipeline
    """
    # Create preprocessing pipeline
    num_imputer = SimpleImputer(strategy='mean')
    cat_imputer = SimpleImputer(strategy='constant', fill_value='MISSING')
    
    # Separate numerical and categorical columns
    num_cols = X_train.select_dtypes(include=['int64', 'float64']).columns
    cat_cols = X_train.select_dtypes(include=['object', 'category']).columns
    
    # Initialize X_processed as None
    X_processed = None
    
    # Process numerical features if they exist
    if len(num_cols) > 0:
        X_num = X_train[num_cols].copy()
        X_num = num_imputer.fit_transform(X_num)
        X_num = pd.DataFrame(X_num, columns=num_cols, index=X_train.index)
        X_processed = X_num
    
    # Process categorical features if they exist
    if len(cat_cols) > 0:
        X_cat = X_train[cat_cols].copy()
        X_cat = cat_imputer.fit_transform(X_cat)
        X_cat = pd.DataFrame(X_cat, columns=cat_cols, index=X_train.index)
        X_cat = pd.get_dummies(X_cat, drop_first=True)
        X_processed = X_cat if X_processed is None else pd.concat([X_processed, X_cat], axis=1)
    
    
    # employ feature selection if indicated
    if select[0]=='r_reg':
        selector1 = SelectPercentile(r_regression, percentile = select[1]).fit(X_processed, y_train['composite_score_2016'])
        selector2 = SelectPercentile(r_regression, percentile = select[1]).fit(X_processed, y_train['composite_score_2021'])
        feat_used=np.union1d(selector1.get_feature_names_out(),selector2.get_feature_names_out()) 
    elif select[0]== 'f_reg':
        selector = SelectPercentile(f_regression, percentile = select[1]).fit(X_processed, y_train['composite_score_2016'])
        selector = SelectPercentile(f_regression, percentile = select[1]).fit(X_processed, y_train['composite_score_2021'])
        feat_used=np.union1d(selector1.get_feature_names_out(),selector2.get_feature_names_out()) 
    elif select[0]== 'mut_info':
        selector = SelectPercentile(mutual_info_regression, percentile = select[1]).fit(X_processed, y_train['composite_score_2016'])
        selector = SelectPercentile(f_regression, percentile = select[1]).fit(X_processed, y_train['composite_score_2021'])
        feat_used=np.union1d(selector1.get_feature_names_out(),selector2.get_feature_names_out()) 
    elif select[0]== 'none':
        selector = 'no selector'
        feat_used=X_processed.columns
    else:
        print('selector not found')
        
    
    # Train model
    model = RandomForestRegressor(n_estimators=100, random_state=random_state)
    model.fit(X_processed[feat_used], y_train)
    
    return {
        'model': model,
        'num_imputer': num_imputer if len(num_cols) > 0 else None,
        'cat_imputer': cat_imputer if len(cat_cols) > 0 else None,
        'num_cols': num_cols,
        'cat_cols': cat_cols,
        'cols': feat_used
    }

def evaluate_model_2D(model_dict, X_eval, y_eval):
    """
    Evaluate model performance on evaluation set
    """
    X_processed = X_eval

    # Ensure columns match training data
    X_processed = X_processed[model_dict['model'].feature_names_in_]
    
    # Make predictions
    y_pred = model_dict['model'].predict(X_processed)
    
    results = {
        'rmse': np.sqrt(np.sum(np.square(y_eval- y_pred))/len(y_eval)),
        'mae': np.sum(np.abs(y_eval-y_pred))/len(y_eval),
        'r2': 1-(np.sum(np.square(y_eval- y_pred))/np.sum(np.square(y_eval- y_eval.mean()))),
        'predicitions': y_pred
    }
    return results



def plot_feature_groups_treemap(results_df):
    """
    Create a treemap visualization showing the predictive power of different feature groups.
    
    Args:
        results_df (pd.DataFrame): DataFrame containing model results with columns:
            group_name, n_features, linear_r2, nonlinear_r2, mean_predictive_power, mean_rmse
    """

    # Print sorted results for reference
    print("\nGroups sorted by predictive power:")
    print(results_df.sort_values('mean_predictive_power', ascending=False)[
        ['group_name', 'mean_predictive_power', 'mean_rmse', 'n_features', 'time']
    ].to_string())

