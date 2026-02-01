-- Q1: Which APIs have the highest latency?
SELECT 
  api_name,
  AVG(response_time_ms) AS avg_latency_ms
FROM verification_logs
GROUP BY api_name
ORDER BY avg_latency_ms DESC;

