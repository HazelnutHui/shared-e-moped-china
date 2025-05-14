
-- Q1: Top 5 busiest start stations
SELECT start_station, COUNT(*) AS departures
FROM rides
GROUP BY start_station
ORDER BY departures DESC
LIMIT 5;

-- Q2: Top 5 busiest end stations
SELECT end_station, COUNT(*) AS arrivals
FROM rides
GROUP BY end_station
ORDER BY arrivals DESC
LIMIT 5;

-- Q3: Peak usage hours across all users
SELECT hour_of_day, COUNT(*) AS ride_count
FROM rides
GROUP BY hour_of_day
ORDER BY ride_count DESC;

-- Q4: Peak hours by user type
SELECT user_type, hour_of_day, COUNT(*) AS ride_count
FROM rides
GROUP BY user_type, hour_of_day
ORDER BY user_type, hour_of_day;

-- Q5: Most frequent start-to-end station pairs
SELECT start_station, end_station, COUNT(*) AS trip_count
FROM rides
GROUP BY start_station, end_station
ORDER BY trip_count DESC
LIMIT 10;

-- Q6: Day-of-week ride frequency and average duration
SELECT day_of_week, COUNT(*) AS ride_count, ROUND(AVG(duration_min), 1) AS avg_duration
FROM rides
GROUP BY day_of_week
ORDER BY ride_count DESC;
