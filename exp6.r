# 6. Palindrome Check

is_palindrome <- function(s) {
  s <- gsub(" ", "", tolower(s))
  return(all(unlist(strsplit(s, "")) == rev(unlist(strsplit(s, "")))))
}

input_string <- readline(prompt = "Enter a string to check if it's a palindrome: ")

if (is_palindrome(input_string)) {
  cat("The string is a palindrome.\n")
} else {
  cat("The string is not a palindrome.\n")
}

