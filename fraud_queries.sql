SELECT COUNT(*) FROM fraud_transactions;


SELECT 
    is_fraud,
    COUNT(*) AS total_transactions,
    ROUND(AVG(amt)::NUMERIC, 2) AS avg_amount,
    ROUND(SUM(amt)::NUMERIC, 2) AS total_amount
FROM fraud_transactions
GROUP BY is_fraud;


-- Query 2: Top 5 categories by fraud count
-- Purpose: Identify which transaction categories have the most fraud cases
SELECT 
    category,
    COUNT(*) AS fraud_count,
    ROUND(SUM(amt)::NUMERIC, 2) AS total_fraud_amount
FROM fraud_transactions
WHERE is_fraud = 1
GROUP BY category
ORDER BY fraud_count DESC
LIMIT 5;



-- Query 3: Fraud rate by gender
-- Purpose: Find which gender is more targeted for fraud

SELECT 
    gender,
    COUNT(*) AS total,
    SUM(is_fraud) AS fraud_cases,
    ROUND(SUM(is_fraud) * 100.0 / COUNT(*), 2) AS fraud_rate_pct
FROM fraud_transactions
GROUP BY gender;


-- Query 4: Top 10 states by highest fraud amount
-- Purpose: Identify which states have the highest fraud losses

SELECT 
    state,
    COUNT(*) AS fraud_count,
    ROUND(SUM(amt)::NUMERIC, 2) AS total_fraud_amount
FROM fraud_transactions
WHERE is_fraud = 1
GROUP BY state
ORDER BY total_fraud_amount DESC
LIMIT 10;



-- Query 5: Fraud by hour of day
-- Purpose: Identify peak hours when fraud is most likely to occur

SELECT 
    EXTRACT(HOUR FROM trans_date_trans_time) AS hour_of_day,
    COUNT(*) AS fraud_count
FROM fraud_transactions
WHERE is_fraud = 1
GROUP BY hour_of_day
ORDER BY fraud_count DESC;


-- Query 6: High value fraud transactions
-- Purpose: Find unusually large fraud transactions above average

SELECT 
    merchant, category, amt, state, trans_date_trans_time
FROM fraud_transactions
WHERE is_fraud = 1 
AND amt > (SELECT AVG(amt) FROM fraud_transactions WHERE is_fraud = 1)
ORDER BY amt DESC
LIMIT 20;