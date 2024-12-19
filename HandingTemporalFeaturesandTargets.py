# -*- coding: utf-8 -*-
"""
The PREPARE social determinants data provides two years of survey information and two years of composite cognitive score. 
Handling this timescale information can help create robust models and more meaningful preditcions

This code will go over several different ways to recompose the data with emphasis on survey and score date

This code also employs several methods to visualize the data for errors 

"""



# add libraries 
import pandas as pd
import numpy as np
from numpy.random import normal
import matplotlib.pyplot as plt
import re



#%% Create helper functions for cleaning data and generating val/test/train splits 
def cleanCatVars(df, my_type='float64'):
    """

    Parameters
    ----------
    df : data frame.
    my_type : data type to convert , optional
        DESCRIPTION. The default is 'float64'.

    Returns
    -------
    df : data frame with objects converted to float.
    df_cat : data frame with objects converted to categorical (not ordinal).

    """
    df_clean=df.copy()
    
    # truly categorical unordered variables to one-hot encode
    cat_vars = ['married_03', 'employment_03', 'married_12','employment_12','rjlocc_m_03','rjobend_reason_03','rjlocc_m_12','rjobend_reason_12','a22_12','a33b_12','j11_12']
    
    for varz in cat_vars:
        dummies = pd.get_dummies(df[varz])
        df_clean = pd.concat( [df_clean, dummies])
        
    df_clean.drop([cat_vars], inplace=True)
    
    df_cat=df_clean.copy()
    
    dtypes = df_clean.dtypes.to_dict()
    # set type to check - want to convert everything to float, so remove anything that isn't float (may want to change to int because categorical?)
    my_type = 'float64'

    # create new variables to store the data we changed to we can check 
    uniqueVarsClean=[]
    cleanVarsNames=[]

    # # go through each variable, check if it's already a float 
    for col_name, typ in dtypes.items():    
        if (typ != my_type) and (col_name!= "uid"):
            # get unique values from each data frame column that is not float
            cleanSortVar=sorted([x for x in df[col_name].unique() if str(x) != 'nan']) 
            # initialize replacement list 
            replaceVar=[]
            # split strings to isolate only single numbers that can be converted into numeric data types, convert them to numbers
            for g in cleanSortVar:
              numsInVar=[int(c) for c in re.split(r'[ .]', g) if len(c) > 0 and re.sub(r"\d+", "", c) == '']
              # only store the first number saved - this prevents extra numbers e.g. for age_03 '0. 49 or younger' would create 0 and 49, but only want to keep 0
              replaceVar.append(numsInVar[0])
            # store changed variable values and names to check later 
            uniqueVarsClean.append( cleanSortVar)
            cleanVarsNames.append(col_name)
            # change values in the cleaned data frame by replacing the string values with the new float values 
            df_cat[col_name].replace(cleanSortVar, [str(c) for c in replaceVar], inplace=True)
            df_cat[col_name]=pd.Categorical(df_cat[col_name].fillna("Missing"))
            df_clean[col_name].replace(cleanSortVar, replaceVar, inplace=True)
            
    return df_clean, df_cat, dtypes



def split_data(splitSize, *args): #df_train, df_lab, 
    rand_split_train=[]
    rand_split_test=[]
    for ar in args :
        train_idx=np.random.choice(len(ar), size=int(len(ar)*splitSize), replace=False)
        rand_split_train.extend(ar[train_idx])
        rand_split_test.extend(ar[np.setdiff1d(np.arange(len(ar)), train_idx)])
        
    return rand_split_train, rand_split_test



#%%

# set random seed
np.random.seed(2);

# load in data
folder='path_to_data'
df=pd.read_csv(folder+'train_features.csv')



########### Clean Data ################

# create secondary data frame for clean data
df_clean=df.copy()
[df_clean, df_clean_cat, dtypes]=cleanCatVars(df_clean)

## check for duplicate data
df[df.duplicated()]



#%% ######### Split features by survey year ###################
# make two new data frames, one with 2003 data, one with 2012 data 
df_03 = pd.DataFrame()
df_12 = pd.DataFrame()
df_03["uid"]=pd.Series(df_clean["uid"])
df_12["uid"]=pd.Series(df_clean["uid"])
df_03["year"]=2003
df_12["year"]=2012
var03Names=[];
var12Names=[];
newname03=[]
newname12=[]
for col_name, typ in dtypes.items():    
    # print(col_name)
    if "03" in col_name: 
        var03Names.append(col_name)
        newname03.append(re.split(r'_', col_name)[0])
    elif "12" in col_name:
        var12Names.append(col_name)
    elif 'uid' not in col_name:
        var03Names.append(col_name)
        var12Names.append(col_name)
        

# get nan cols 
df_03=pd.concat([df_03,df[var03Names]], axis=1)
df_03=df_03.rename(columns = lambda X: re.split(r'[ _]+[0-9]', X)[0])
df_12=pd.concat([df_12,df[var12Names]], axis=1)
df_12=df_12.rename(columns = lambda X: re.split(r'[ _]+[0-9]', X)[0])
#
# remove rows with all nan values (require more than 2 non-NA values (more than just uid and year))
df_03_narm=df_03.dropna(thresh=6)
df_12_narm=df_12.dropna(thresh=6)

na_dx_03=df_03[~df_03.index.isin(df_03_narm.index)].index
na_dx_12=df_12[~df_12.index.isin(df_12_narm.index)].index

# combine the two dataframes into one dataframe where the year of data collection is a different variable 
year_sep_df = pd.concat([df_12_narm, df_03_narm], axis=0)

del df_03, df_12



############ visualize data to see if there are errors #######################
# age should increase
fig, ax = plt. subplots()
ax.scatter(df_clean['uid'],df_clean['age_12']-df_clean['age_03'])
plt.show()
# education should increase or stay the same
fig, ax = plt. subplots()
ax.scatter(df_clean['uid'],df_clean['edu_gru_12']-df_clean['edu_gru_03'])
plt.show()
# number of marriages should only increase
fig, ax = plt. subplots()
ax.scatter(df_clean['uid'],df_clean['n_mar_12']-df_clean['n_mar_03'])
plt.show()

 
# remove faulty age data row
drop_idx=df_clean[(df_clean['age_12']-df_clean['age_03'])<0].uid.values[0]
df_clean.drop(df_clean[df_clean['uid']==drop_idx].index, inplace=True)
year_sep_df.drop(year_sep_df[year_sep_df['uid']==drop_idx].index, inplace=True)
df_clean_cat.drop(df_clean_cat[df_clean_cat['uid']==drop_idx].index, inplace=True)


####### check for missing labels, repeats between test and train #######  
# load in label and train data 
df_test=pd.read_csv(folder+'test_features.csv')
df_lab=pd.read_csv(folder+'train_labels.csv')

# calculate number of items in train set that are different from label set and test set
len(np.setdiff1d(df_clean["uid"].unique(),df_lab["uid"].unique()))==0  # should be zero
len(np.setdiff1d(df_clean["uid"].unique(),df_test["uid"].unique()))==len(df_clean["uid"].unique())  # should be length of train set

# # merge train and label sets 
testAndLabel = pd.merge(df_clean, df_lab, left_on = "uid", right_on = "uid")


#######################################################################
###########            Split Data into train/val        ###############
#######################################################################


###### Check which uids have data for which years of train and test data ####
# merge year-distributed data to evenly distribute samples 
df_lab2=df_lab.rename(columns={'year': 'yearCog'})
testAndLabel2 = pd.merge(year_sep_df, df_lab2, left_on = "uid", right_on = "uid") # default 'inner' gets rid of any rows with uids that aren't in both sets
testAndLabel2['year_pred']=testAndLabel2['yearCog']-testAndLabel2['year']

# printout the distribution of year counts 
testAndLabel2['year'].value_counts(normalize=True)
testAndLabel2['yearCog'].value_counts(normalize=True)


# Stratify based on whether a person has one or both years for training and cognitive testing
  # group data by UID and then count number of instances of 'year', 'yearCog' per uid. If 1 = one year of data, 2=2 years data
uid_patterns=testAndLabel2.groupby('uid')[['year', 'yearCog']].nunique()

one_year_uids = uid_patterns[uid_patterns.eval('year == 1 & yearCog==1')].index
mixed_uids_train = uid_patterns[uid_patterns.eval('year == 2 & yearCog==1')].index
mixed_uids_lab = uid_patterns[uid_patterns.eval('year == 1 & yearCog==2')].index
two_year_uids = uid_patterns[uid_patterns.eval('year == 2 & yearCog==2')].index


# split UIDs into train and val (80%,/20%)
[train_idx, val_idx] = split_data( 0.8, one_year_uids, mixed_uids_train, mixed_uids_lab, two_year_uids)




####################################################################################
############ Generate different targets based on year information ##################
####################################################################################
# %% Generate future scores based on difference between timing of survey and score
#   target is [years_in_the_future, cognitive_score], where years_in_the_future is 4,9,13,or 18
featype='survey_score_year_diff'

#calculate difference between survey year and score year 
testAndLabel3=testAndLabel2.copy()
testAndLabel3['yearCog']=testAndLabel2['yearCog']-testAndLabel2['year']
testAndLabel3['yearCog']=pd.Categorical(testAndLabel3['yearCog'], categories=np.sort(testAndLabel3['yearCog'].unique()), ordered=True)
# split into train/test
lab_train = testAndLabel3.loc[testAndLabel2['uid'].isin(train_idx), ['yearCog', 'composite_score']]
lab_val = testAndLabel3.loc[testAndLabel2['uid'].isin(val_idx), ['yearCog', 'composite_score']]
feat_train = testAndLabel3.loc[testAndLabel2['uid'].isin(train_idx), ~np.isin(testAndLabel2.columns, ['yearCog', 'composite_score'])]
feat_val = testAndLabel3.loc[testAndLabel2['uid'].isin(val_idx), ~np.isin(testAndLabel2.columns, ['yearCog', 'composite_score'])]


#%% Generate scores for 2016 and 2021 based on unseparated (original) features
#  target is [year_of_score, cognitive_score] (the same format as submission)

featype='allFeatures_targetYear'
# merge train and label sets 
testAndLabel = pd.merge(df_clean, df_lab, left_on = "uid", right_on = "uid")

# split into train/test
lab_train = testAndLabel.loc[testAndLabel['uid'].isin(train_idx), ['year', 'composite_score']]
lab_val = testAndLabel.loc[testAndLabel['uid'].isin(val_idx), ['year', 'composite_score']]
feat_train = testAndLabel.loc[testAndLabel['uid'].isin(train_idx), ~np.isin(testAndLabel.columns, ['uid','year', 'composite_score'])]
feat_val = testAndLabel.loc[testAndLabel['uid'].isin(val_idx), ~np.isin(testAndLabel.columns, ['uid', 'year', 'composite_score'])]
feat_names = feat_train.columns

### Try converting year to improve training predictions ###
# replace years with values more similar to cognitive score for more similar scaling in error function
lab_train =lab_train.replace([2016, 2021], [16,21])
lab_val =lab_val.replace([2016, 2021], [16,21])

# convert year to categorical 
lab_train['year']=pd.Categorical(lab_train['year'], categories=np.sort(lab_train['year'].unique()), ordered=True)
lab_val['year']=pd.Categorical(lab_val['year'], categories=np.sort(lab_val['year'].unique()), ordered=True)

# Convert year to one-hot 
lab_train =lab_train.replace([2016, 2021], [0,1])
lab_val =lab_val.replace([2016, 2021], [0,1])


#%% Resample data from 'allFeatures_targetYear' to get a more even distribution so the model doesn't always guess 2021
featype='allFeatures_targetYear_bootstrapped'
# merge train and label sets 
testAndLabel = pd.merge(df_clean, df_lab, left_on = "uid", right_on = "uid")
# Balance data 
# notice that ~63% are 2021 samples, 37% are 2016 samples out of 3471 total 
# resample about 500 samples to get a 55 /45 split, 
#get UIDs of 2016 cog score
set2016 = testAndLabel[testAndLabel['year']==2016]
# get a random sample of these scores
addtl2016 = set2016.sample(n=550, replace=True)
# add to data 
testAndLabel=pd.concat([testAndLabel, addtl2016], axis=0)
# split into train/test
lab_train = testAndLabel.loc[testAndLabel['uid'].isin(train_idx), ['year', 'composite_score']]
lab_val = testAndLabel.loc[testAndLabel['uid'].isin(val_idx), ['year', 'composite_score']]
feat_train = testAndLabel.loc[testAndLabel['uid'].isin(train_idx), ~np.isin(testAndLabel.columns, ['uid','year', 'composite_score'])]
feat_val = testAndLabel.loc[testAndLabel['uid'].isin(val_idx), ~np.isin(testAndLabel.columns, ['uid', 'year', 'composite_score'])]
feat_names = feat_train.columns

#%% separate cognitive scores into two different target variables to predict 2016 and 2021 scores for all uids
#   Augment training data to include scores for both years in training data but not testing data. 

featype='two_scores'

# separate cognitive scores into two different target variables to predict 2016 and 2021 scores for all uids
df_lab16=df_lab.copy()
df_lab16=df_lab16.loc[df_lab['year']==2016]
df_lab16.rename(columns={'composite_score': 'composite_score_2016'}, inplace=True)
df_lab16.drop(columns=['year'], inplace=True)
df_lab21=df_lab.copy()
df_lab21=df_lab21.loc[df_lab['year']==2021]
df_lab21.rename(columns={'composite_score': 'composite_score_2021'}, inplace=True)
df_lab21.drop(columns=['year'], inplace=True)
df_lab3=pd.merge(df_lab16, df_lab21, how='outer', on='uid')

del df_lab16, df_lab21

# merge train and label sets 
testAndLabel = pd.merge(df_clean, df_lab3, left_on = "uid", right_on = "uid")

# split into train/test
lab_train = testAndLabel.loc[testAndLabel['uid'].isin(train_idx), ['composite_score_2016', 'composite_score_2021']]
lab_val = testAndLabel.loc[testAndLabel['uid'].isin(val_idx), ['composite_score_2016',  'composite_score_2021']]
labval_masked = np.ma.masked_invalid(lab_val)
feat_train = testAndLabel.loc[testAndLabel['uid'].isin(train_idx), ~np.isin(testAndLabel.columns, ['uid','composite_score_2016', 'composite_score_2021'])]
feat_val = testAndLabel.loc[testAndLabel['uid'].isin(val_idx), ~np.isin(testAndLabel.columns, ['uid','composite_score_2016',  'composite_score_2021'])]

# fill nas in *train* labels based on diff from existing 2-year scores
avg_diff=np.nanmean(lab_train['composite_score_2016']-lab_train['composite_score_2021'])
avg_std=np.nanstd(lab_train['composite_score_2016']-lab_train['composite_score_2021'])

lab_train.loc[lab_train['composite_score_2016'].isna(),'composite_score_2016']=lab_train.loc[lab_train['composite_score_2016'].isna(),'composite_score_2021']+normal(avg_diff, avg_std,np.sum(lab_train['composite_score_2016'].isna())).astype(int)
lab_train.loc[lab_train['composite_score_2021'].isna(),'composite_score_2021']=lab_train.loc[lab_train['composite_score_2021'].isna(),'composite_score_2016']-normal(avg_diff,avg_std,np.sum(lab_train['composite_score_2021'].isna())).astype(int)


