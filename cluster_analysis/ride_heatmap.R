# ============================================
# Ride Time Heatmap – Shared E-Moped Project
# Author: Hui Wang
# Visualizes ride frequency by weekday and hour
# ============================================

# Install packages if needed:
# install.packages("ggplot2")
# install.packages("dplyr")
# install.packages("lubridate")

library(ggplot2)
library(dplyr)
library(lubridate)

# Simulate sample ride start times (300 rows)
set.seed(123)
df <- data.frame(
  ride_id = 1:300,
  start_time = as.POSIXct("2024-06-01 00:00:00") + runif(300, min = 0, max = 7*24*60*60)
)

df <- df %>%
  mutate(
    weekday = wday(start_time, label = TRUE, abbr = FALSE),  # Monday to Sunday
    hour = hour(start_time)
  )

# Aggregate counts
ride_matrix <- df %>%
  group_by(weekday, hour) %>%
  summarise(ride_count = n(), .groups = "drop")

# Plot heatmap
ggplot(ride_matrix, aes(x = hour, y = weekday, fill = ride_count)) +
  geom_tile(color = "white") +
  scale_fill_gradient(low = "#f0f9e8", high = "#0868ac") +
  labs(
    title = "Ride Frequency Heatmap by Hour and Weekday",
    x = "Hour of Day",
    y = "Day of Week",
    fill = "Ride Count"
  ) +
  theme_minimal()
