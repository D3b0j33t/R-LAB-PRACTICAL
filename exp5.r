# 5. Running Total

running_total <- function(numbers) {
  return(cumsum(numbers))
}

# Prompt user for input
cat("Enter a list of numbers: ")
user_input <- scan("", what = numeric(), quiet = TRUE)

# Display the Running Total
cat(sprintf("The Running Total is: %d\n", running_total(user_input)))



