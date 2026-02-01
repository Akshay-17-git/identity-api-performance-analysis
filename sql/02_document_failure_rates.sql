-- Q2: Which document types fail the most?
SELECT
  document_type,
  COUNT(*) AS total_requests,
  SUM(CASE WHEN status = 'failure' THEN 1 ELSE 0 END) AS failures,
  ROUND(
    100.0 * SUM(CASE WHEN status = 'failure' THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS failure_rate_percent
FROM verification_logs
GROUP BY document_type
ORDER BY failure_rate_percent DESC;

