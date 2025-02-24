multiplication_table <- function(n = 12, columns = 3) { cat("\nMultiplication Tables:\n\n")

table_rows <- ceiling(n / columns)  # Number of rows per column set

for (row in 1:table_rows) { for (col in 0:(columns - 1)) { num <- row + col * table_rows if (num <= n) { cat(sprintf("Multiplication Table for %d:", num), "\t\t") } } cat("\n")

for (j in 1:n) {
  for (col in 0:(columns - 1)) {
    num <- row + col * table_rows
    if (num <= n) {
      cat(sprintf("%d x %d = %d", num, j, num * j), "\t\t")
    }
  }
  cat("\n")
}
cat("\n")

} }

multiplication_table()

