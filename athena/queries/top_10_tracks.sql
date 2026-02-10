SELECT
    track_name,
    MAX(track_popularity) AS popularity
FROM spotify_analytics.spotify_analytics_base
GROUP BY track_name
ORDER BY popularity DESC
LIMIT 10;
