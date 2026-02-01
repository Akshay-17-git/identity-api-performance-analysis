-- Q3: OCR vs System Failures (% split)
SELECT
  CASE
    WHEN failure_reason LIKE '%ocr%' THEN 'OCR Failure'
    ELSE 'System Failure'
  END AS failure_type,
  COUNT(*) AS failure_count,
  ROUND(
    100.0 * COUNT(*) / (SELECT COUNT(*) FROM verification_logs WHERE status = 'failure'),
    2
  ) AS failure_percentage
FROM verification_logs
WHERE status = 'failure'
GROUP BY failure_type;

