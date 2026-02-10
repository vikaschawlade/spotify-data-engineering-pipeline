# 🎧 Spotify Data Engineering Project

## Overview
This project demonstrates an end-to-end data engineering pipeline built on AWS for processing and analyzing Spotify data. The pipeline ingests raw CSV files containing artist, album, and track information, transforms the data using AWS Glue, stores optimized Parquet outputs in Amazon S3, and enables analytics through Amazon Athena and Power BI.

The goal of this project is to showcase practical data engineering skills, including cloud storage, ETL processing, schema management, and data visualization.

---

## Architecture
The pipeline follows a modern, cloud-native architecture:

1. Raw Spotify CSV data is uploaded to Amazon S3
2. AWS Glue performs ETL operations and joins datasets
3. Transformed data is stored in Parquet format in S3
4. AWS Glue Crawler catalogs the processed data
5. Amazon Athena enables SQL-based analytics
6. Power BI connects to Athena for visualization

📌 *An architecture diagram is available in the `architecture/` folder.*

---

## Tech Stack
- **Cloud Platform:** Amazon Web Services (AWS)
- **Storage:** Amazon S3
- **ETL:** AWS Glue
- **Data Catalog:** AWS Glue Crawler
- **Query Engine:** Amazon Athena
- **Visualization:** Power BI
- **Data Formats:** CSV (raw), Parquet (processed)

---

## Data Flow
1. **Data Ingestion**
   - Raw CSV files for artists, albums, and tracks are manually uploaded to an S3 bucket.

2. **Transformation**
   - AWS Glue ETL job reads raw data from S3.
   - Inner joins are performed across artist, album, and track datasets.
   - Data is cleaned and standardized.

3. **Data Storage**
   - Processed data is written back to S3 in Parquet format for optimized querying.

4. **Schema Inference**
   - AWS Glue Crawler infers schemas and creates tables in the Data Catalog.

5. **Analytics & Visualization**
   - Athena queries the Parquet data using SQL.
   - Power BI consumes Athena results to create dashboards.

---

## Repository Structure
```text
spotify-data-engineering/
├── data/            # Sample raw and processed datasets
├── glue/            # AWS Glue ETL jobs and crawler configs
├── athena/          # SQL queries for analysis
├── powerbi/         # Dashboards and screenshots
├── architecture/    # System architecture diagrams
├── iam/             # IAM policies
├── scripts/         # Helper scripts
└── README.md
