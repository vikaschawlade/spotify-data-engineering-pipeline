SELECT
    artist_name,
    MAX(artist_popularity) AS popularity
FROM spotify_analytics.spotify_analytics_base
GROUP BY artist_name
ORDER BY popularity DESC
LIMIT 10;
