# =============================================================================
# for_1.R — For Loop: Print numbers and their squares
# Topic: a. For
# =============================================================================

library(tidyverse)

# Defined as a constant so changing the range requires editing one line
N <- 10

# A for loop is used here because we know exactly how many times to repeat —
# once for each number from 1 to N
for (i in seq_len(N)) {
  cat("i =", i, "| square =", i^2, "\n")
}

# Collect results into a tibble so they are easy to read and compare
results <- tibble(
  number = seq_len(N),
  square = seq_len(N)^2
)

cat("\n")
print(results)
