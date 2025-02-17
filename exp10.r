# 10. Student Age Analysis
ages <- c(20,20,20,20,20,21,21,21,22,22,22,22,23,23,23)

# i. Median age of students under 22
under_22 <- ages[ages < 22]
cat("\ni. Median age of students under 22:", median(under_22), "\n")

# ii. Median age of all students
cat("ii. Median age of all students:", median(ages), "\n")

# iii. Mean age of all students
cat("iii. Mean age of all students:", mean(ages), "\n")

# iv. Modal age
get_mode <- function(v) {
  uniqv <- unique(v)
  uniqv[which.max(tabulate(match(v, uniqv)))]
}
cat("iv. Modal age:", get_mode(ages), "\n")

# v. After adding two 23-year-olds
new_ages <- c(ages, 23, 23)
cat("\nv. After adding two 23-year-olds:")
cat("\n  New mean:", mean(new_ages))
cat("\n  New median:", median(new_ages))
cat("\n  New mode:", get_mode(new_ages), "\n")