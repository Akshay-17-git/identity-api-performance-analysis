-- Q4: Conversion by Segment (Country + Document)
SELECT
  country,
  document_type,
  COUNT(*) AS total_attempts,
  SUM(CASE WHEN status = 'success' THEN 1 ELSE 0 END) AS successful_attempts,
  ROUND(
    100.0 * SUM(CASE WHEN status = 'success' THEN 1 ELSE 0 END) / COUNT(*),
    2
  ) AS conversion_rate_percent
FROM verification_logs
GROUP BY country, document_type
ORDER BY conversion_rate_percent ASC;

