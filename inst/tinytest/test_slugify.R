library(slugify)

expect_true(slugify("R is great!") == "r-is-great")

expect_true(slugify("R is great!", lower = FALSE) == "R-is-great")

expect_true(slugify("R is great!", replacement = "@") == "r@is@great")

expect_true(slugify("R is great!", remove = "/[Rr]/g") == "is-geat")
