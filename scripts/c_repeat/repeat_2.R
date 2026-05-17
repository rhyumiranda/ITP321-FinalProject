# =============================================================================
# repeat_2.R — Repeat Loop: Guess a secret number
# Topic: c. Repeat
# =============================================================================

# Constants make the secret and the attempt cap easy to adjust
SECRET    <- 7L
MAX_TRIES <- 20L

set.seed(42)   # fixes the random number generator so results are reproducible
tries <- 0L

# repeat is used because we must always make at least one guess before we
# can check whether it matched the secret — the exit condition lives at the end
repeat {
  guess <- sample(1:10, 1)   # pick a random number between 1 and 10
  tries <- tries + 1L
  cat("Try #", tries, ": guessed", guess, "\n")
  if (guess == SECRET || tries >= MAX_TRIES) break
}

if (guess == SECRET) {
  cat("Found the secret number", SECRET, "in", tries, "tries!\n")
} else {
  cat("Reached the maximum of", MAX_TRIES, "tries without finding", SECRET, "\n")
}
