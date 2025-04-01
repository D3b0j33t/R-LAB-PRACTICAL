# 8. Binary Search (assumes sorted list)

binary_search <- function(vec, target) {
  # Binary search requires the vector to be sorted
  left <- 1
  right <- length(vec)

  vec <- sort(vec) # The vector is sorted here

  # Continue searching until the left pointer is greater than or equal to the right pointer
  while (left <= right) {
    mid <- floor((left + right) / 2)  # Calculate middle index
    if (vec[mid] == target) {
      return(mid)  # Target found, return the index
    } else if (vec[mid] < target) {
      left <- mid + 1  # Search in the right half
    } else {
      right <- mid - 1  # Search in the left half
    }
  }
  return(-1)  # Target not found
}

# Prompt the user for input
cat("Enter a list of numbers: ")
vec <- scan("", what = numeric(), quiet = TRUE)

cat("Sorted list of numbers: ", sort(vec), "\n")
target <- as.numeric(readline(prompt = "Enter the number to search: "))
index <- binary_search(vec, target)

if (index != -1) {
  cat("Number found at index:", index, "\n")
} else {
  cat("Number not found in the list.\n")
}

