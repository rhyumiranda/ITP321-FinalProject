# =============================================================================
# for_2.R — For Loop: Sum all numbers from 1 to N
# Topic: a. For
# =============================================================================

# Defined as a constant so the upper bound is easy to change
N   <- 100
SUM <- 0

# A for loop steps through every number from 1 to N and adds it to a running
# total — the number of repetitions is fixed and known beforehand
for (i in seq_len(N)) {
  SUM <- SUM + i
}

cat("Sum of 1 to", N, "=", SUM, "\n")

# Formula cross-check: N*(N+1)/2 should match the loop result
cat("Formula check N*(N+1)/2 =", N * (N + 1) / 2, "\n")
