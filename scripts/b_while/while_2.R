# =============================================================================
# while_2.R — While Loop: Double a number until it exceeds a limit
# Topic: b. While
# =============================================================================

# Constants make it easy to experiment with different starting values and limits
START_VALUE <- 1
LIMIT       <- 1000

number <- START_VALUE

# A while loop fits here because we don't know in advance how many doublings
# are needed — the loop decides at each step whether to keep going
while (number <= LIMIT) {
  cat("Current value:", number, "\n")
  number <- number * 2
}

cat("\nFirst value to exceed", LIMIT, ":", number, "\n")
