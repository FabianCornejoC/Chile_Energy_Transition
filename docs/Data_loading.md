## Data Loading Strategy

Raw electricity generation data is loaded using 2 step approach:

1. A staging table is created with all fields as text format to allow ingestion without formatting errors.
2. A typed raw table is created, where numeric and data fields are explicitly cast and cleaned during insertion.

This approach ensure data entegrity, traceability, normalization and robustness agains regional formatting issues in source files.
