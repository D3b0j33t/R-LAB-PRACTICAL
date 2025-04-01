
multiplication_table <- function(n = 12, columns = 6) {
  cat("\nMultiplication Tables:\n\n")
  rows <- 2
  
  for (row in 0:(rows - 1)) {
    cat(paste0(ifelse(1:columns + row * columns <= n, 
                      sprintf("%2d's Table", 1:columns + row * columns), ""), "\t\t"), "\n")
    
    for (j in 1:n) {
      cat(paste0(ifelse(1:columns + row * columns <= n, 
                        sprintf("%2d x %2d = %3d", 1:columns + row * columns, j, (1:columns + row * columns) * j), ""), "\t\t"), "\n")
    }
    cat("\n")
  }
}

multiplication_table()



