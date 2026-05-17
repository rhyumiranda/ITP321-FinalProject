# =============================================================================
# while_1.R — While Loop: Countdown
# Topic: b. While
# =============================================================================

# Starting value as a constant so a different countdown requires one edit
START <- 10L

count <- START

# A while loop is used because the number of steps depends on the condition —
# we keep going as long as count is greater than zero
while (count > 0) {
  cat("Count:", count, "\n")
  count <- count - 1L
}

cat("Blastoff!\n")
