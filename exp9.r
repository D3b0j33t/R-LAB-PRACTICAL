matrix_operations <- function() {

  # Function to input a matrix with a fixed number of elements
  input_matrix <- function(name, rows, cols) {
    total_elements <- rows * cols  # Calculate the total number of elements needed
    cat(paste("Enter exactly", total_elements, "elements for the", name, "matrix row-wise:\n"))
    
    repeat {
      # Take user input
      mat_input <- scan("", quiet = TRUE)
      
      # Check if the input size matches the required number of elements
      if (length(mat_input) == total_elements) {
        # Reshape the input into a matrix
        mat <- matrix(mat_input, nrow = rows, ncol = cols, byrow = TRUE)
        return(mat)
      } else {
        cat("Invalid input! Please enter exactly", total_elements, "numbers.\n")
      }
    }
  }
  
  # Input dimensions of the matrices
  rows <- as.numeric(readline(prompt = "Enter the number of rows: "))
  cols <- as.numeric(readline(prompt = "Enter the number of columns: "))
  
  # Input two matrices
  mat1 <- input_matrix("first", rows, cols)
  mat2 <- input_matrix("second", rows, cols)
  
  # Display the matrices
  cat("\nMatrix 1:\n")
  print(mat1)
  cat("\nMatrix 2:\n")
  print(mat2)
  
  # Menu-driven operations
  repeat {
    cat("\n--- Matrix Operations Menu ---\n")
    cat("1. Addition\n")
    cat("2. Subtraction\n")
    cat("3. Element-wise Multiplication\n")
    cat("4. Element-wise Division\n")
    cat("5. Exit\n")
    
    choice <- as.numeric(readline(prompt = "Enter your choice (1-5): "))
    
    if (choice == 1) {
      cat("\nMatrix Addition:\n")
      print(mat1 + mat2)
    } else if (choice == 2) {
      cat("\nMatrix Subtraction:\n")
      print(mat1 - mat2)
    } else if (choice == 3) {
      cat("\nElement-wise Multiplication:\n")
      print(mat1 * mat2)
    } else if (choice == 4) {
      # Handle division by zero
      if (any(mat2 == 0)) {
        cat("\nDivision Error: Division by zero is not allowed. Please adjust the second matrix.\n")
      } else {
        cat("\nElement-wise Division:\n")
        print(mat1 / mat2)
      }
    } else if (choice == 5) {
      cat("\nTerminating. Goodbye!\n")
      break
    } else {
      cat("\nInvalid choice. Please try again.\n")
    }
  }
}

# Call the function to start the program
matrix_operations()
