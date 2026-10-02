* Encoding: UTF-8.
* =========================================================================.
* Project: Clinical Risk Factors and Logistic Regression Modeling
* Author: Syeda Aniqa Bukhari (M.S. Bioinformatics, NUST)
* Purpose: Data Cleaning, Bivariate Testing, and Binary Logistic Regression
* =========================================================================.

* 1. Data Hygiene and Variable Recoding.
RECODE Gender ('Male'=1) ('Female'=0) INTO Gender_Code.
RECODE Hypertension ('Yes'=1) ('No'=0) INTO HTN_Code.
RECODE Smoking_Status ('Current'=2) ('Former'=1) ('Never'=0) INTO Smoke_Code.
VARIABLE LABELS Gender_Code 'Gender (1=Male, 0=Female)'
 /HTN_Code 'Hypertension Diagnosis (1=Yes, 0=No)'
 /Smoke_Code 'Smoking Category (0=Never, 1=Former, 2=Current)'.
EXECUTE.

* 2. Descriptive Statistics and Normality Checks.
FREQUENCIES VARIABLES=Gender_Code HTN_Code Smoke_Code Cardiac_Event
  /STATISTICS=DEFAULT
  /ORDER=ANALYSIS.

DESCRIPTIVES VARIABLES=Age BMI
  /STATISTICS=MEAN STDDEV MIN MAX KURTOSIS SKEWNESS.

* 3. Bivariate Chi-Square Tests of Independence.
CROSSTABS
  /TABLES=Gender_Code HTN_Code Smoke_Code BY Cardiac_Event
  /FORMAT=AVALUE TABLES
  /STATISTICS=CHISQ PHI
  /CELLS=COUNT ROW TOTAL
  /COUNT ROUND CELL.

* 4. Binary Logistic Regression Model.
LOGISTIC REGRESSION VARIABLES Cardiac_Event
  /METHOD=ENTER Age BMI HTN_Code Smoke_Code Gender_Code
  /CONTRAST (Smoke_Code)=Indicator(1)
  /PRINT=GOODFIT CI(95)
  /CRITERIA=PIN(0.05) POUT(0.10) ITERATE(20) CUT(0.5).
