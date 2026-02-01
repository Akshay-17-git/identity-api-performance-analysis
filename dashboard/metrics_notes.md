# Dashboard Metrics Notes

## Core Metrics Tracked

### API Performance Metrics
- **Average Response Time (ms)**: Measures end-to-end latency for each API endpoint
- **P95/P99 Latency**: Captures tail latency for SLA compliance
- **Throughput**: Requests per second handled by each API

### Failure Metrics
- **Overall Failure Rate**: Percentage of total requests that fail
- **Document-Specific Failure Rate**: Breakdown by document type (PAN, Aadhaar, Passport, etc.)
- **Failure Category Split**: OCR failures vs System/Timeout failures

### Conversion Metrics
- **Success Rate by Segment**: Conversion rates segmented by Country × Document Type
- **Drop-off Points**: Where users abandon the verification process
- **Retry Rate**: Users who attempt verification multiple times

## Visualization Guidelines

### 1. Latency Distribution Chart
- Bar chart showing average latency by API
- Color-code: Green (<500ms), Yellow (500-1000ms), Red (>1000ms)

### 2. Failure Rate by Document Type
- Horizontal bar chart sorted by failure rate
- Annotate with specific failure reasons (OCR error, blurred image, timeout)

### 3. Failure Category Pie Chart
- Split between OCR-related and System-related failures
- Include percentage labels

### 4. Conversion Heatmap
- Grid showing Country × Document Type conversion rates
- Highlight lowest performing segments for quick wins

## Refresh Frequency
- Real-time: API latency metrics (every 5 minutes)
- Hourly: Failure rates and counts
- Daily: Conversion metrics by segment

