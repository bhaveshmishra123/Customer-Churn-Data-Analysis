Customer-Churn-Analysis-Project
End-to-end customer churn analysis project featuring data cleaning, preprocessing, exploratory data analysis (EDA), feature engineering, and visual insights using Python. Includes an interactive Power BI dashboard showcasing key churn metrics, trends, and customer segmentation.
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
🚀 Customer Churn Analysis Project

📊 Comprehensive Data Cleaning, Feature Engineering & Visualization Using Python
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
📌 Overview

This project focuses on analyzing a telecom customer churn dataset to uncover insights on customer retention, churn patterns, and revenue impact.

It includes:

A complete Python analysis workflow: data cleaning → feature engineering → EDA → visualizations

An interactive Power BI dashboard to explore KPIs such as churn rate, revenue trends, top services, and customer segments

Goal: Simulate a real-world data analyst workflow — from raw data to business-ready insights.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
🎯 Objectives

Clean and preprocess the dataset for consistency and accuracy

Engineer new features to enhance analytical insights

Explore churn patterns, revenue impact, and customer behavior trends

Visualize findings effectively using Python

Save the cleaned and processed dataset for future use (output.csv)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
🧰 Tools & Libraries Used
Purpose	Library

Data Manipulation	Pandas, NumPy

Data Visualization	Matplotlib, Seaborn, Plotly

Environment	Jupyter Notebook

Statistical Analysis	Scipy, Statsmodels
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
🖥️ Step 0: SQL Workbench – Data Understanding & Cleaning (Optional)

Before Python analysis, the dataset was imported into MySQL Workbench for initial exploration and cleaning:

Imported customer_churn.csv into a table customer_churn_data.

Performed data understanding: checked row count, column types, unique values, and summary statistics.

Conducted data cleaning: handled missing or blank values (e.g., updating empty TotalCharges to NULL).

Explored basic patterns and metrics using SQL queries (e.g., churn counts, monthly charges).

✅ Outcome: Gained a clean, validated dataset ready for Python-based feature engineering, EDA, and visualization
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
📂 Dataset Information

File Name: customer_churn.csv

Rows & Columns: Varies depending on dataset version

Key Columns:
customerID, gender, SeniorCitizen, Partner, Dependents, tenure, PhoneService, MultipleLines, InternetService, OnlineSecurity, OnlineBackup, DeviceProtection, TechSupport, StreamingTV, StreamingMovies, Contract, PaperlessBilling, PaymentMethod, MonthlyCharges, TotalCharges, Churn

Cleaned Output File: output.csv

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
🧹 Step 1: Data Cleaning

Data cleaning ensures accuracy and consistency before analysis. Key steps performed:

Removed duplicate rows

Filled missing numeric values with median

Filled missing categorical/string values with 'Unknown'

Converted TotalCharges and other numeric columns to appropriate data types

Handled inconsistent values in categorical columns (e.g., Yes/No mapping)

Renamed columns for clarity

✅ Final dataset validated: no missing values, correct types, ready for analysis

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
🛠️ Step 2: Feature Engineering

New features were created to enhance analysis and uncover patterns:

Feature	Description


tenure_group	Grouped tenure into categories (0–12, 12–24, 24–48, etc.) for trend analysis

avg_charges_per_month	TotalCharges / tenure — captures average revenue per month per customer

is_high_value	Boolean — MonthlyCharges above average

contract_type_simplified	Simplified contract types for better segmentation

services_count	Number of services subscribed by the customer

churn_flag	Binary encoding of Churn (Yes=1, No=0)

Cleaned and feature-engineered dataset saved as output.csv.

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
📊 Step 3: Exploratory Data Analysis (EDA)

EDA was performed to understand:

Data shape, types, and distributions

Missing values and duplicates

Summary statistics (mean, median, IQR)

Relationships among numeric and categorical variables

High-level insights on churn by demographics, services, and contract types

Key Analytical Checks:

Dataset shape and info (df.info())

Missing values summary

Unique value counts

Numeric column analysis (min, max, mean, median)

Correlation matrix for numeric features

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
📈 Step 4: Visualizations

Visualizations help uncover patterns and communicate insights effectively.

Analysis	                       Visualization Type	              Description

Churn Distribution    	            Bar Chart	                   Overall churn rate

Tenure vs Churn	               Histogram / KDE Plot	           Customer retention over time

MonthlyCharges vs Churn	            Box Plot	                 Impact of monthly charges on churn

Services vs Churn	                 Bar Chart	                  Which services affect churn

Contract Type Insights	           Count Plot	                Churn by contract type

Correlation Matrix	               Heatmap	                Numeric feature relationships and churn drivers
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
📈 Step 4: Visualizations

Visualizations help uncover patterns and communicate insights effectively.

Analysis	Visualization Type	Description

Churn Distribution	Bar Chart	Overall churn rate

Tenure vs Churn	Histogram / KDE Plot	Customer retention over time

MonthlyCharges vs Churn	Box Plot	Impact of monthly charges on churn

Services vs Churn	Bar Chart	Which services affect churn

Contract Type Insights	Count Plot	Churn by contract type

Correlation Matrix	Heatmap	Numeric feature relationships and churn drivers

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

📦 Step 5: Saving Final Dataset

The fully cleaned and feature-engineered dataset is saved as:

output.csv

Ready for:

Interactive dashboard creation

Predictive modeling (churn prediction)

Power BI/Tableau visualization

-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
📊 Step 6: Possible Next Steps

Build a Streamlit dashboard for interactivity

Apply Machine Learning to predict customer churn

Connect insights to retention strategies for business recommendations
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
🟦 Step 7: Power BI Dashboard (Optional)

An interactive Power BI dashboard was created to explore:

Churn trends by contract type, tenure, and demographics

Revenue analysis by customer segments

Services impact on churn

Key KPIs: churn rate, total revenue, high-risk customers

Enables interactive decision-making and reporting
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
📁 Project Structure

Customer_Churn_Analysis/
│
├── customer_churn.csv                # Original raw dataset
├── customer_churn_analysis.ipynb     # Jupyter Notebook (main analysis)
├── customer_churn_dashboard.pbix     # Power BI interactive dashboard
├── output.csv                        # Cleaned & feature-engineered dataset
├── README.md                         # Project documentation
└── visuals/                          # Folder for charts (optional)

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
🚀 How to Run

Clone this repository:

https://github.com/bhaveshmishra123/Customer-Churn-Analysis

Open the notebook:

jupyter notebook customer_churn_analysis.ipynb

Install dependencies:

pip install pandas numpy matplotlib seaborn plotly

Run all cells to reproduce the analysis

--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
📧 Author

Name: Bhavesh Kumar Mishra

Role: Data Analyst | Python Enthusiast | Power BI Specialist

Connect: LinkedIn Profile
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
🏁 Conclusion

This project demonstrates a complete data analytics workflow — from raw data cleaning to feature engineering, EDA, and insightful visualizations — using real-world customer churn data.

It highlights analytical thinking, Python proficiency, and data storytelling, with an optional Power BI dashboard for interactive business insights.
