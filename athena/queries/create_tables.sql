CREATE DATABASE IF NOT EXISTS spotify_analytics;

CREATE EXTERNAL TABLE IF NOT EXISTS spotify_analytics.spotify_analytics_base (
    track_id STRING,
    track_name STRING,
    duration_ms INT,
    track_duration_minutes DOUBLE,
    track_popularity INT,
    album_id STRING,
    album_name STRING,
    release_date STRING,
    artist_id STRING,
    artist_name STRING,
    artist_popularity INT,
    genres STRING
)
PARTITIONED BY (release_year INT)
STORED AS PARQUET
LOCATION 's3://your-spotify-processed-bucket/processed/spotify_analytics_base_parquet/';

-- Load partitions
MSCK REPAIR TABLE spotify_analytics.spotify_analytics_base;