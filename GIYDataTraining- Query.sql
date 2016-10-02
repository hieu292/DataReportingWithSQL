SELECT 
DISTINCT MONTH(created_at) AS ByMonth, 
giydatatraining.first_user_buyers(MONTH(created_at)) AS first_time_buyers, 
(giydatatraining.total_buyer_by_month(MONTH(created_at)) - giydatatraining.duplicate_value(MONTH(created_at))  - giydatatraining.first_user_buyers(MONTH(created_at))) AS returned_buyers
FROM giydatatraining.purchases
GROUP BY MONTH(created_at)