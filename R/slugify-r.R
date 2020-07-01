`%na%` <- function(a, b) if (is.na(a)) b else a

#' Native R slugify (with the help of {stringi})
#'
#' @param x string to slugify
#' @param repl what to replace spaces with
#' @param lower lowercase final output?
#' @export
slugify_native <- function(x, repl = "-", lower = TRUE) {

  x <- stri_replace_all_fixed(x, names(slugify_charmap), slugify_charmap, vectorize_all = FALSE)
  x <- stri_replace_all_regex(x, "[^\\P{P}-]", "")
  x <- stri_trim_both(x)
  x <- stri_replace_all_regex(x, "[[:space:]]+", repl)

  if (lower) (x <- stri_trans_tolower(x))

  x

}


