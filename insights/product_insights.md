## Key Findings

### 1. High Latency APIs
OCR-based APIs (Passport, Aadhaar) show significantly higher average latency compared to face match and address verification.
This suggests heavy image processing and potential optimization opportunities.

### 2. Document Failure Patterns
Aadhaar and Passport documents exhibit the highest failure rates, driven primarily by OCR errors such as image blur and low quality scans.

### 3. Failure Breakdown
~70% of failures are OCR-related, indicating that model accuracy and input quality are the main bottlenecks rather than system instability.

### 4. Segment-Level Conversion Gaps
International passport verifications have noticeably lower conversion rates compared to domestic PAN-based verification.

## Recommendations

- Introduce pre-upload image quality checks to reduce OCR failures.
- Optimize OCR pipelines for Aadhaar and Passport documents.
- Track latency SLAs at an API level and flag regressions automatically.
- Segment conversion metrics by document + geography for targeted improvements.

