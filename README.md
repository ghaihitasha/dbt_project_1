# dbt Base Project 1

## Overview
This is a sample **dbt** (Data Build Tool) project that demonstrates the following concepts:

- **Seeds** – Loading static CSV data into your warehouse.
- **Base Models** – Creating standardized, cleaned, and transformed tables from raw data.
- **Compute Models** – Aggregated, business-friendly tables for analytics and reporting.
- **Tests & Documentation** – Ensuring data quality and creating clear project documentation.

The goal of this project is to help you understand the **core building blocks** of a dbt project and serve as a starting point for your own analytics engineering workflow.


## Prerequisites
- Python 3.8+
- [dbt Core](https://docs.getdbt.com/dbt-cli/installation) installed
- Database adapter (e.g., `dbt-duckdb`, `dbt-postgres`, `dbt-bigquery`, etc.)


## Viewing Documentation
To generate and serve documentation for this project, run:
```bash
dbt docs generate
dbt docs serve
