# Identity Verification API Performance Analysis

This project analyzes the performance of identity verification APIs with a focus on latency, failure reasons, and conversion optimization.

## Objectives
- Identify high-latency APIs
- Understand document-level failure patterns
- Quantify OCR vs system failures
- Recommend conversion improvements for specific user segments

## Project Structure
```
identity-api-performance-analysis/
├── data/
│   └── verification_logs.csv
├── sql/
│   ├── 01_high_latency_apis.sql
│   ├── 02_document_failure_rates.sql
│   ├── 03_ocr_vs_system_failures.sql
│   └── 04_conversion_by_segment.sql
├── insights/
│   └── product_insights.md
├── dashboard/
│   └── metrics_notes.md
└── README.md
```

## Tools Used
- SQL
- CSV-based transactional data
- Product analytics frameworks

## Key Metrics
- API latency
- Failure rate by document type
- OCR vs system error split
- Segment-wise conversion rate

## Key Findings

### 1. High Latency APIs
OCR-based APIs (Passport, Aadhaar) show significantly higher average latency compared to face match and address verification. This suggests heavy image processing and potential optimization opportunities.

### 2. Document Failure Patterns
Aadhaar and Passport documents exhibit the highest failure rates, driven primarily by OCR errors such as image blur and low quality scans.

### 3. Failure Breakdown
~70% of failures are OCR-related, indicating that model accuracy and input quality are the main bottlenecks rather than system instability.

### 4. Segment-Level Conversion Gaps
International passport verifications have noticeably lower conversion rates compared to domestic PAN-based verification.

## Recommendations

- Introduce pre-upload image quality checks to reduce OCR failures
- Optimize OCR pipelines for Aadhaar and Passport documents
- Track latency SLAs at an API level and flag regressions automatically
- Segment conversion metrics by document + geography for targeted improvements

## Outcome
The analysis highlights OCR accuracy and document quality as primary levers for improving verification success and reducing user drop-offs.

---

## For Resume

**Product Analytics Project – Identity Verification APIs**
Analyzed API latency, OCR failures, and conversion drop-offs using SQL; proposed product optimizations to improve verification success rates.

## For Interview

"I looked at identity verification systems the way Bureau operates — APIs, OCR failures, and segment-level conversion."

