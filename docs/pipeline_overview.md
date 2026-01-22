## Data Pipeline Overview

The project follows a layered data pipeline:

- **Staging**: Raw data ingestion with all fields as TEXT.
- **Raw (Typed)**: Cleaned and typed version of source data without business logic.
- **Analytics**: Aggregated and curated datasets used for analysis and visualization.

Data quality rules such as handling missing values are applied only in the analytics layer.

Monthly aggregated energy values were validated against raw hourly data.
Total energy values match exactly, confirming correct aggregation logic.
