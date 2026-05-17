# =============================================================================
# data_science_1.R — Data Science: Summary Statistics
# Topic: f. Data Science
# Dataset: iris (built into R — no package installation needed)
# =============================================================================

library(tidyverse)

iris_tbl <- as_tibble(iris)

cat("=== Dataset Overview ===\n")
cat("Rows:", nrow(iris_tbl), "| Columns:", ncol(iris_tbl), "\n\n")

# summary() gives a quick five-number summary for every column so we can
# spot the range, center, and spread of each measurement at a glance
cat("=== Overall Summary ===\n")
print(summary(iris_tbl))

# Grouping by Species shows how measurements differ across flower types —
# the grouped means are the core finding of the dataset
cat("\n=== Mean Measurements by Species ===\n")
iris_tbl %>%
  group_by(Species) %>%
  summarise(
    mean_sepal_length = round(mean(Sepal.Length), 2),
    mean_sepal_width  = round(mean(Sepal.Width),  2),
    mean_petal_length = round(mean(Petal.Length), 2),
    mean_petal_width  = round(mean(Petal.Width),  2),
    n                 = n(),
    .groups = "drop"
  ) %>%
  print()
