-- Create a simulated shared e-moped ride table
CREATE TABLE rides (
    ride_id INT PRIMARY KEY,
    user_type VARCHAR(20),
    start_time DATETIME,
    end_time DATETIME,
    start_station VARCHAR(50),
    end_station VARCHAR(50),
    duration_minutes INT
);

-- Average ride duration by user type
SELECT user_type,
       COUNT(*) AS ride_count,
       ROUND(AVG(duration_minutes), 2) AS avg_duration
FROM rides
GROUP BY user_type;

-- Ride volume by hour of day (to detect peak hours)
SELECT EXTRACT(HOUR FROM start_time) AS hour_of_day,
       COUNT(*) AS ride_count
FROM rides
GROUP BY hour_of_day
ORDER BY ride_count DESC;

-- Top 5 most popular start stations
SELECT start_station,
       COUNT(*) AS start_count
FROM rides
GROUP BY start_station
ORDER BY start_count DESC
LIMIT 5;

-- Weekend ride ratio by user type
SELECT user_type,
       ROUND(
         SUM(CASE WHEN EXTRACT(DOW FROM start_time) IN (0, 6) THEN 1 ELSE 0 END) * 100.0 / COUNT(*),
         2
       ) AS weekend_ride_ratio
FROM rides
GROUP BY user_type;
