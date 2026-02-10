WITH album_counts AS (
    SELECT
        release_year,
        album_name,
        COUNT(track_id) AS total_tracks
    FROM spotify_analytics.spotify_analytics_base
    GROUP BY release_year, album_name
),
ranked_albums AS (
    SELECT *,
           ROW_NUMBER() OVER (
               PARTITION BY release_year
               ORDER BY total_tracks DESC
           ) AS rank
    FROM album_counts
)
SELECT
    release_year,
    album_name,
    total_tracks
FROM ranked_albums
WHERE rank = 1
ORDER BY release_year;
