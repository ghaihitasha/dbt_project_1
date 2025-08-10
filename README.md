# dbt Base Project

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


## Dbt run

```bash
(dbt) PS C:\Users\hitas\projects\dbt\dbt_project_1> dbt run --select base_orders base_order_details compute_customer_orders
19:32:41  Running with dbt=1.10.7
19:32:42  Registered adapter: duckdb=1.9.4
19:32:46  Unable to do partial parsing because a project config has changed
19:32:54  Found 3 models, 2 seeds, 10 data tests, 429 macros
19:32:54
19:32:54  Concurrency: 1 threads (target='dev')
19:32:54
19:32:56  1 of 3 START sql table model main.base_order_details ........................... [RUN]
19:32:56  1 of 3 OK created sql table model main.base_order_details ...................... [OK in 0.38s]
19:32:56  2 of 3 START sql table model main.base_orders .................................. [RUN]
19:32:57  2 of 3 OK created sql table model main.base_orders ............................. [OK in 0.14s]
19:32:57  3 of 3 START sql table model main.compute_customer_orders ...................... [RUN]
19:32:57  3 of 3 OK created sql table model main.compute_customer_orders ................. [OK in 0.18s]
19:32:57
19:32:57  Finished running 3 table models in 0 hours 0 minutes and 2.55 seconds (2.55s).
19:32:57
19:32:57  Completed successfully
19:32:57
19:32:57  Done. PASS=3 WARN=0 ERROR=0 SKIP=0 NO-OP=0 TOTAL=3
```

## Viewing Documentation
To generate and serve documentation for this project, run:
```bash
dbt docs generate
dbt docs serve
```

![image](https://github.com/ghaihitasha/dbt_project_1/blob/main/assets/dbt_docs_example.png)
