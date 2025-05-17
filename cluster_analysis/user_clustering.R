# Load necessary libraries
library(ggplot2)
library(dplyr)
library(cluster)
library(factoextra)

# Simulated user behavior data
set.seed(42)
df <- data.frame(
  avg_duration = c(rnorm(50, mean = 12, sd = 3), rnorm(50, mean = 30, sd = 4), rnorm(50, mean = 20, sd = 2)),
  rides_per_week = c(rnorm(50, mean = 10, sd = 2), rnorm(50, mean = 3, sd = 1), rnorm(50, mean = 6, sd = 2)),
  weekend_ratio = c(rnorm(50, mean = 0.2, sd = 0.05), rnorm(50, mean = 0.8, sd = 0.1), rnorm(50, mean = 0.5, sd = 0.1))
)

# Scale the data
scaled_df <- scale(df)

# Run k-means clustering (k = 3)
set.seed(123)
kmeans_result <- kmeans(scaled_df, centers = 3, nstart = 25)

# Add cluster labels to original data
df$cluster <- as.factor(kmeans_result$cluster)

# Visualize the clusters
fviz_cluster(kmeans_result, data = scaled_df,
             geom = "point",
             ellipse.type = "norm",
             ggtheme = theme_minimal(),
             main = "K-Means Clustering of E-Moped Users")

# Optional: Summary of each cluster
cluster_summary <- df %>%
  group_by(cluster) %>%
  summarise(
    avg_duration = mean(avg_duration),
    rides_per_week = mean(rides_per_week),
    weekend_ratio = mean(weekend_ratio)
  )

print(cluster_summary)
