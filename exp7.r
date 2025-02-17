# 7. Linear Search

linear_search <- function(vec, target) {
  for (i in seq_along(vec)) {
    if (vec[i] == target) {
      return(i)  # Return the index where the target is found
    }
  }
  return(-1)  # Return -1 if the target is not found
}

cat("Enter a list of numbers: ")
vec <- scan("", what = numeric(), quiet = TRUE)

target <- as.numeric(readline(prompt = "Enter the number to search: "))
index <- linear_search(vec, target)

if (index != -1) {
  cat("Number found at index:", index, "\n")
} else {
  cat("Number not found in the list.\n")
}
