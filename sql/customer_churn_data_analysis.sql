-- Data understanding
-- select the database
-- USE customer_churn_data;


-- view the dataset structure
-- DESCRIBE customer_churn_data;


-- preview sample records
-- SELECT * 
-- FROM customer_churn_data
-- LIMIT 10;


-- Count total records
-- SELECT COUNT(*) AS total_customer
-- FROM customer_churn_data;


-- Check unique customers
-- SELECT COUNT(DISTINCT customerID) AS unique_customers
-- FROM customer_churn_data;


-- Identify Missing / blank values
-- SELECT
--     SUM(customerID IS NULL) AS customerID_nulls,
--     SUM(TotalCharges IS NULL OR TotalCharges = '') AS TotalCharges_nulls,
--     SUM(tenure IS NULL) AS tenure_nulls,
--     SUM(MonthlyCharges IS NULL) AS MonthlyCharges_nulls
-- FROM customer_churn_data;


-- understand churn distribution (Target variable)
-- SELECT Churn, COUNT(*) AS count
-- FROM customer_churn_data
-- GROUP BY Churn;



-- understand customer demographic
-- SELECT gender, COUNT(*) AS count
-- FROM customer_churn_data
-- GROUP BY gender;

-- SELECT SeniorCitizen, COUNT(*) AS count
-- FROM customer_churn_data
-- GROUP BY SeniorCitizen;



-- contract type distribution
-- SELECT Contract, COUNT(*) AS count
-- FROM customer_churn_data
-- GROUP BY Contract;


-- Payment method distribution
-- SELECT PaymentMethod, COUNT(*) AS count
-- FROM customer_churn_data
-- group by PaymentMethod;


-- Numerical columns summary
-- SELECT 
--      MIN(Tenure) AS min_tenure,
--      MAX(Tenure) AS max_tenure,
--      MIN(MonthlyCharges) AS min_monthly_charges,
--      MAX(MonthlyCharges) AS max_monthly_charges
-- FROM customer_churn_data;


-- Data cleaning
-- Check duplicate records
-- SELECT customerID, COUNT(*) AS count
-- FROM customer_churn_data
-- GROUP BY customerID
-- HAVING COUNT(*) > 1;


-- Handle blank values in total charges
-- SELECT customerID, tenure, MonthlyCharges, TotalCharges
-- FROM customer_churn_data
-- WHERE TotalCharges = '' OR TotalCharges IS NULL;


-- Disable safe updates
-- SET SQL_SAFE_UPDATES = 0;

-- Convert total charges into numeric
-- UPDATE customer_churn_data
-- SET TotalCharges = NULL
-- WHERE TotalCharges = '';

-- Enable safe updates again (optional)
-- SET SQL_SAFE_UPDATES = 1;

-- convert column data type 
-- ALTER TABLE customer_churn_data
-- MODIFY TotalCharges DECIMAL(10,2);


-- Verify nulls after cleaning
-- SELECT
--     SUM(TotalCharges IS NULL) AS TotalCharges_nulls
-- FROM customer_churn_data;


-- standarized categorical values
-- SELECT DISTINCT Contract FROM customer_churn_data;
-- SELECT DISTINCT PaymentMethod FROM customer_churn_data;
-- SELECT DISTINCT InternetService FROM customer_churn_data;


-- validate binary columns
-- SELECT DISTINCT Churn FROM customer_churn_data;
-- SELECT DISTINCT Partner FROM customer_churn_data;
-- SELECT DISTINCT Dependents FROM customer_churn_data;


-- tenure validation
-- SELECT *
-- FROM customer_churn_data
-- WHERE tenure < 0;


-- final clean dataset check
-- SELECT COUNT(*) AS total_rows,
--        COUNT(DISTINCT customerID) AS unique_customers
-- FROM customer_churn_data;


-- Exploratory data analysis
-- overall churn rate
-- SELECT 
--     Churn,
--     COUNT(*) AS customer_count,
--     ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM customer_churn_data), 2) AS churn_percentage
-- FROM customer_churn_data
-- GROUP BY Churn;


-- Churn by gender
-- SELECT 
--     gender,
--     Churn,
--     COUNT(*) AS count
-- FROM customer_churn_data
-- GROUP BY gender, Churn
-- ORDER BY gender;

-- churn by seniorcitizen
-- SELECT 
--     SeniorCitizen,
--     Churn,
--     COUNT(*) AS count
-- FROM customer_churn_data
-- GROUP BY SeniorCitizen, Churn;


-- churn by contract type
-- SELECT 
--     Contract,
--     Churn,
--     COUNT(*) AS count
-- FROM customer_churn_data
-- GROUP BY Contract, Churn
-- ORDER BY Contract;


-- churn by payment method
-- SELECT 
--     PaymentMethod,
--     Churn,
--     COUNT(*) AS count
-- FROM customer_churn_data
-- GROUP BY PaymentMethod, Churn
-- ORDER BY PaymentMethod;


-- churn by intrnet service
-- SELECT 
--     InternetService,
--     Churn,
--     COUNT(*) AS count
-- FROM customer_churn_data
-- GROUP BY InternetService, Churn;


-- tenure analysis by churn 
-- SELECT 
--     Churn,
--     ROUND(AVG(tenure), 2) AS avg_tenure,
--     MIN(tenure) AS min_tenure,
--     MAX(tenure) AS max_tenure
-- FROM customer_churn_data
-- GROUP BY Churn;


-- monthly charges vs churn
-- SELECT 
--     Churn,
--     ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges
-- FROM customer_churn_data
-- GROUP BY Churn;


-- total charges vs churn
-- SELECT 
--     Churn,
--     ROUND(AVG(TotalCharges), 2) AS avg_total_charges
-- FROM customer_churn_data
-- GROUP BY Churn;


-- churn by tech support
-- SELECT 
--     TechSupport,
--     Churn,
--     COUNT(*) AS count
-- FROM customer_churn_data
-- GROUP BY TechSupport, Churn;

-- churn by streaming services
-- SELECT 
--     StreamingTV,
--     Churn,
--     COUNT(*) AS count
-- FROM customer_churn_data
-- GROUP BY StreamingTV, Churn;

-- SELECT 
--     StreamingMovies,
--     Churn,
--     COUNT(*) AS count
-- FROM customer_churn_data
-- GROUP BY StreamingMovies, Churn;



