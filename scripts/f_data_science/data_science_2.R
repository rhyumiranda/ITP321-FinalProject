# =============================================================================
# data_science_2.R — Data Science: Correlation & Simple Linear Regression
# Topic: f. Data Science
# Dataset: iris (built into R — no package installation needed)
# =============================================================================

library(tidyverse)

iris_tbl <- as_tibble(iris)

# --------------------------------------------------------------------------
# Correlation
# --------------------------------------------------------------------------

# Pearson correlation tells us how strongly two measurements move together —
# computed first so we know whether a linear model is even appropriate
r <- cor(iris_tbl$Sepal.Length, iris_tbl$Petal.Length)

cat("=== Correlation: Sepal Length vs Petal Length ===\n")
cat("r =", round(r, 3), "\n")
cat("Interpretation: a value close to 1 means a strong positive relationship\n\n")

# --------------------------------------------------------------------------
# Simple Linear Regression
# --------------------------------------------------------------------------

# A linear model quantifies the relationship with a slope and intercept —
# this tells us how much petal length is expected to grow per 1 cm of sepal length
model <- lm(Petal.Length ~ Sepal.Length, data = iris_tbl)

cat("=== Linear Regression: Petal.Length ~ Sepal.Length ===\n")
print(summary(model))

r_squared <- round(summary(model)$r.squared, 3)
slope     <- round(coef(model)[["Sepal.Length"]], 2)

cat("\nKey findings:\n")
cat("  R-squared:", r_squared,
    "— the model explains", r_squared * 100, "% of the variation in petal length\n")
cat("  Slope:", slope,
    "— each extra 1 cm of sepal length predicts", slope, "cm more petal length\n")
