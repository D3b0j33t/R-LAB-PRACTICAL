multiplication_table <- function(n = 12, columns = 6) {
  cat("\nMultiplication Tables:\n\n")
  rows <- 2
  numbers_per_row <- n / rows
  for (row in 0:(rows - 1)) {
    for (col in 1:columns) {
      num <- col + row * columns
      if (num <= n) {
        cat(sprintf("%2d's Table", num), "\t\t")
      }
    }
    cat("\n")
    for (j in 1:n) {
      for (col in 1:columns) {
        num <- col + row * columns
        if (num <= n) {
          cat(sprintf("%2d x %2d = %3d", num, j, num * j), "\t\t")
        }
      }
      cat("\n")
    }
    cat("\n")
  }
}
multiplication_table()