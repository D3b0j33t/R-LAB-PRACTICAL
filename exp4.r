# Define a function to find the maximum number

find_max <- function(numbers) {
  return(max(numbers))
}

# Prompt user for input
cat("Enter a list of numbers: ")
user_input <- scan("", what = numeric(), quiet = TRUE)

# Find the maximum using the function
max_value <- find_max(user_input)

# Display the maximum value
cat(sprintf("The maximum value is: %d\n", max_value))



