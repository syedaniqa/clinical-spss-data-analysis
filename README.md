# Clinical Survey Data Analysis and Binary Logistic Regression in SPSS

Author: Syeda Aniqa Bukhari  
Education: Master of Science in Bioinformatics, NUST  

## Project Overview
This project contains the complete workflow for cleaning, analyzing, and reporting on a clinical healthcare dataset. The goal is to evaluate risk factors associated with adverse clinical cardiac outcomes using both descriptive statistics and multivariable regression modeling.

## Contents
1. clinical_dataset.csv : Raw survey and clinical variable dataset
2. syntax.sps : Complete IBM SPSS syntax for variable recoding, Chi Square tests, and logistic regression
3. Results Summary : APA 7th style summary tables and clinical interpretations

## Statistical Methodology
1. Data Hygiene: Variable transformation, missing value assessment, and outlier screening.
2. Bivariate Analysis: Chi Square tests of independence to evaluate associations between categorical clinical factors and outcome.
3. Multivariable Modeling: Binary logistic regression assessing independent predictive power of Age, BMI, Hypertension, and Smoking.

## Key Regression Results
Model Summary:
Omnibus Test of Model Coefficients: p < 0.001 (Model statistically significant)  
Hosmer and Lemeshow Test: p = 0.428 (Good model fit)  

Predictors in the Equation:
Age: Odds Ratio = 1.049 (95% CI: 1.010 to 1.089, p = 0.011)  
Hypertension: Odds Ratio = 2.081 (95% CI: 1.122 to 3.845, p = 0.020)  
Smoking: Odds Ratio = 1.822 (95% CI: 1.015 to 3.267, p = 0.044)  

All analyses follow ICMJE guidelines and APA 7th edition formatting rules.
