# =============================================================================
# data_visualization_2.R — Data Visualization: Boxplot & Histogram
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

# --------------------------------------------------------------------------
# Plot 3: Boxplot — Petal Length distribution by species
# --------------------------------------------------------------------------

# Boxplot + jitter shows both the summary shape and individual flowers —
# more informative than a bar chart of means alone
plot_boxplot <- ggplot(iris_tbl, aes(x = Species, y = Petal.Length, fill = Species)) +
  geom_boxplot(alpha = 0.6, outlier.shape = NA) +
  geom_jitter(width = 0.2, alpha = 0.4, size = 1.5) +
  labs(
    title = "Distribution of Petal Length by Species",
    x     = "Species",
    y     = "Petal Length (cm)"
  ) +
  theme_minimal(base_size = 12) +
  theme(legend.position = "none")   # species already labelled on x-axis

ggsave(
  filename = file.path(OUTPUT_DIR, "plot_boxplot.png"),
  plot     = plot_boxplot,
  width    = PLOT_W, height = PLOT_H, dpi = DPI
)
cat("Saved: output/plot_boxplot.png\n")

# --------------------------------------------------------------------------
# Plot 4: Histogram — Sepal Length distribution across all flowers
# --------------------------------------------------------------------------

# A histogram reveals the overall shape — whether species overlap or are
# cleanly separated in sepal length
plot_hist <- ggplot(iris_tbl, aes(x = Sepal.Length, fill = Species)) +
  geom_histogram(binwidth = 0.5, color = "white", alpha = 0.75) +
  labs(
    title = "Distribution of Sepal Length",
    subtitle = "bin width = 0.5 cm",
    x     = "Sepal Length (cm)",
    y     = "Count",
    fill  = "Species"
  ) +
  theme_minimal(base_size = 12)

ggsave(
  filename = file.path(OUTPUT_DIR, "plot_histogram.png"),
  plot     = plot_hist,
  width    = PLOT_W, height = PLOT_H, dpi = DPI
)
cat("Saved: output/plot_histogram.png\n")
