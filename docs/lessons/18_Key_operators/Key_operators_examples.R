# ============================================================
# Key Operators and Functions - Examples from Lesson
# ============================================================

# Setup: Load required packages
# install.packages("pacman") # uncomment if needed
pacman::p_load(
  tidyverse,
  lubridate,
  janitor,
  here
)

# ============================================================
# BASIC MATH OPERATORS
# ============================================================

1 + 1       # Addition
2 - 1       # Subtraction
3 * 2       # Multiplication
3 / 2       # Division
4 ^ 2       # Exponential
4 ^ (1/2)   # Square root (using exponent)
sqrt(4)     # Square root (using function)


# ============================================================
# BASIC RELATIONAL OPERATORS
# ============================================================

1 < 1   # Less than
1 > 1   # Greater than
1 <= 1  # Less than or equal to
1 >= 1  # Greater than or equal to
1 == 1  # Equal to
1 != 1  # Not equal to


# ============================================================
# BOOLEAN / LOGICAL OPERATORS
# ============================================================

(1 == 1)                  # Group criteria: grouping a statement
(1 == 1) & (3 > 2)        # AND: both must be TRUE
(1 == 1) | (1 > 2)        # OR: at least one must be TRUE
!(1 > 2)                  # NOT: negates the logical value


# ============================================================
# %in% OPERATOR
# ============================================================

my_vector <- c("a", "b", "c", "d")   # Create a vector with letters a-d

"a" %in% my_vector                       # Is "a" in my vector?
"m" %in% my_vector                       # Is "m" in my vector?
"m" %in% my_vector | "a" %in% my_vector  # Is "m" OR "a" in my vector?
"A" %in% my_vector                       # Case sensitive: "A" != "a"


# ============================================================
# ROUNDING AND MATH FUNCTIONS
# ============================================================

round(3.5, digits = 0)                    # Round 3.5 to 0 decimal places (banker's rounding)
round(4.5, digits = 0)                    # Round 4.5 to 0 decimal places (banker's rounding)

janitor::round_half_up(3.5, digits = 0)   # Round half up (conventional rounding)
janitor::round_half_up(4.5, digits = 0)   # Round half up (conventional rounding)

ceiling(3.1234)                           # Ceiling: round up

floor(3.1234)                             # Floor: round down

abs(3.1234)                               # Absolute value

sqrt(3.1234)                              # Square root

exp(3.1234)                               # Exponent (e^x)   [Note: lesson says exponent(), correct fn is exp()]

log(3.1234)                               # Natural logarithm

log10(3.1234)                             # Log base 10

log2(3.1234)                              # Log base 2


# ============================================================
# STATISTICAL FUNCTIONS
# ============================================================

# Create a sample numeric vector (with a missing value to demo na.rm)
x <- c(2, 4, 6, 8, NA, 12)

mean(x, na.rm = TRUE)       # Mean (average)

median(x, na.rm = TRUE)     # Median

sd(x, na.rm = TRUE)         # Standard deviation

quantile(x, probs = 0.25, na.rm = TRUE)  # Quantile (e.g., 25th percentile)

sum(x, na.rm = TRUE)        # Sum

min(x, na.rm = TRUE)        # Minimum value

max(x, na.rm = TRUE)        # Maximum value

range(x, na.rm = TRUE)      # Range (min and max)

summary(x)                  # Summary statistics


# ============================================================
# OTHER USEFUL FUNCTIONS
# ============================================================

seq(1, 10, 2)                             # Sequence from 1 to 10 by 2

rep(1:3, 2)                               # Repeat 1:3 twice
rep(c("a", "b", "c"), 3)                  # Repeat a character vector 3 times

set.seed(526360)                          # Setting seed to get same results
sample(1:15, size = 5, replace = TRUE)    # Random sample of 5 from 1:15 (with replacement)
