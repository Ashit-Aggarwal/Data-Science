You work as a Business Analytics Consultant at the Bank of Corporate.The bank was witnessing slower than usual growth in its book of business for the most recent quarter in 2018. The bank provides financial services/products such as savings accounts, current accounts, debit cards, etc. to its customer. The data suggested that it was the home loan business of the bank that was hit by a major loss. Now, loans are the core business of banks. The main profit comes directly from the loan’s interest. The head of the Home Loan business asked the heads of the Sales, Operations, Risk and Analytics teams to investigate and identify the root causes for the slowing growth and solve the problem. A business like selling Home Loans can grow or shrink based on several factors like demand or supply side. Some of the reasons are:

Demand Side: Are interest rates high?
Demand Side: Are there any macro economic reasons, such as recession or low salary growth or inflation?
Supply Side: Are new and attractive housing projects not available in the markets being served?
Supply Side: Have real estate prices shot up making homes unaffordable, relatively speaking?
Competitor Side: Are we losing customers to our competition? Is our competition also facing lower growth?
The team found out that the credit risk was in abnormal standards and the default loan rates were high. So what do you mean by default loans and credit risk?

Deafult loans :
Default is the failure to repay a loan according to the terms agreed to in the promissory note. For most federal student loans, you will default if you have not made a payment in more than 270 days.

Credit risk :
It is understood simply as the risk a bank takes while lending out money to borrowers. They might default and fail to repay the dues in time and these results in losses to the bank.

So, what do banks do then?
They need to manage their credit risks. The goal of credit risk management in banks is to maintain credit risk exposure within proper and acceptable parameters. It is the practice of mitigating losses by understanding the adequacy of a bank’s capital and loan loss reserves at any given time. For this, banks not only need to manage the entire portfolio but also individual credits.

Measures taken
So in 2019, the bank came up with a project to build a "Credit risk estimate model" for its home loan branch.The loan should be granted after an intensive process of verification and validation. The dataset (provided below) contains the information about all the customers who were contacted during this year and were provided loans based on various parameters. The "Credit risk estimate model" need to be cost-efficient so that the bank not only decreases their credit risk but also increase the total profit.

Business objective
Your aim is to build the "Credit risk estimate model" to classify new loans availed as "Low Risk", "High Risk" and "Medium Risk". This will help the bank to sanction loans to "Low Risk" customers, following up with the latest information/data for the "Medium Risk" customers and reject the loan approval for "High Risk" customers.

Read the dataset
#Import the libraries
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt
import seaborn as sns
​
#Load the loan dataset
​
loan_data=pd.read_csv('loan.csv')
​
#Details of the dataset
​
loan_data.info()
<class 'pandas.core.frame.DataFrame'>
RangeIndex: 38642 entries, 0 to 38641
Data columns (total 8 columns):
 #   Column       Non-Null Count  Dtype  
---  ------       --------------  -----  
 0   id           38642 non-null  int64  
 1   loan_amnt    38642 non-null  int64  
 2   funded_amnt  38642 non-null  int64  
 3   int_rate     38642 non-null  float64
 4   installment  38642 non-null  float64
 5   emp_length   38642 non-null  int64  
 6   annual_inc   38642 non-null  float64
 7   loan_status  38642 non-null  object 
dtypes: float64(3), int64(4), object(1)
memory usage: 2.4+ MB
The dataset has the following columns:

id : Transaction ID use to identify each transaction uniquely
loan_amnt : Loan amount that was requested by the customer
funded_amnt : Amount that was sanctioned by the bank
int_rate : Interest rate offered on the loan amount
installment : Amount of money paid during each installment
emp_length : Work experience (employment length of the customer)
annual_inc : What is the annual income of the customer
loan_status : Classified as whether it is "High Risk", "Low Risk" and "Medium Risk"
