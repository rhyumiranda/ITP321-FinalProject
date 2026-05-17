# =============================================================================
# data_visualization_1.R — Data Visualization: Scatter Plot & Bar Chart
# Topic: e. Data Visualization
# Dataset: iris (built into R — no package installation needed)
# =============================================================================

library(tidyverse)
library(here)

# Constants centralised at the top so dimensions are easy to tune
OUTPUT_DIR <- here::here("output")
DPI        <- 150
PLOT_W     <- 8
PLOT_H     <- 5

iris_tbl <- as_tibble(iris)

cat("=== Dataset: iris ===\n")
cat("Rows:", nrow(iris_tbl), "| Species:", paste(levels(iris$Species), collapse = ", "), "\n\n")

# --------------------------------------------------------------------------
# Plot 1: Scatter — Sepal Length vs Sepal Width
# --------------------------------------------------------------------------

# Colouring by Species shows whether the two measurements naturally cluster
# by flower type — a scatter plot is the clearest way to see this
plot_scatter <- ggplot(iris_tbl, aes(x = Sepal.Length, y = Sepal.Width, color = Species)) +
  geom_point(size = 2.5, alpha = 0.8) +
  labs(
    title = "Sepal Length vs. Sepal Width by Species",
    x     = "Sepal Length (cm)",
    y     = "Sepal Width (cm)",
    color = "Species"
  ) +
  theme_minimal(base_size = 12)

ggsave(
  filename = file.path(OUTPUT_DIR, "plot_scatter.png"),
  plot     = plot_scatter,
  width    = PLOT_W, height = PLOT_H, dpi = DPI
)
cat("Saved: output/plot_scatter.png\n")

# --------------------------------------------------------------------------
# Plot 2: Bar chart — mean petal length per species
# --------------------------------------------------------------------------

# Aggregating to the mean first makes species differences easy to compare
# at a glance — individual points would be too cluttered here
mean_petals <- iris_tbl %>%
  group_by(Species) %>%
  summarise(mean_petal_length = mean(Petal.Length), .groups = "drop")

plot_bar <- ggplot(mean_petals, aes(x = Species, y = mean_petal_length, fill = Species)) +
  geom_col(alpha = 0.85) +
  labs(
    title = "Mean Petal Length by Species",
    x     = "Species",
    y     = "Mean Petal Length (cm)"
  ) +
  theme_minimal(base_size = 12) +
  theme(legend.position = "none")   # species already labelled on x-axis

ggsave(
  filename = file.path(OUTPUT_DIR, "plot_bar.png"),
  plot     = plot_bar,
  width    = PLOT_W, height = PLOT_H, dpi = DPI
)
cat("Saved: output/plot_bar.png\n")
