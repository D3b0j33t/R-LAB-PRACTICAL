# 3. Multiplication Table of 'n' upto 20 multiples

n <- as.integer(readline("Enter a number: "))

cat(sprintf("\nMultiplication Table of %d upto 20:\n\n", n))

for(i in 1:20) {
  cat(sprintf("%d X %d = %d\n", n, i, n*i))
}
