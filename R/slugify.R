#' Slugify a string
#'
#' @param x string
#' @param replacement replace spaces with replacement character, defaults to `-`
#' @param remove remove characters that match this JavaScript regex, defaults to `NULL` (no deleting).
#'        This should be a [JavaScript bare regex](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions)
#'        including the `//` and any modifiers. e.g. to remove all R's (upper and lower) from a slug you should
#'        specify `remove = "/[rR]/g`.
#' @param lower convert to lower case, defaults to `TRUE`
#' @param strict strip special characters except replacement, defaults to `TRUE`
#' @export
#' @examples
#' slugify("R is great!") # "r-is-great"
#' slugify("R is great!", replacement = "@@") # "r@@is@@great"
#' slugify("R is great!", remove = "/[Rr]/g") # "is-geat"
slugify <- function(x, replacement = "-", remove = NULL, lower = TRUE, strict = TRUE) {

  if (!is.null(remove)) {

    sprintf(
      "var res = slugify(%s, { replacement: %s, remove: %s, lower: %s, strict: %s });\n",
      shQuote(x), shQuote(replacement),
      remove,
      if (lower) "true" else "false",
      if (strict) "true" else "false"
    ) -> stmt

    .pkgenv$ctx$eval(V8::JS(stmt))

    .pkgenv$ctx$get("res")

  } else {

    .pkgenv$ctx$call(
      "slugify", x[1],
      list(
        replacement = replacement,
        lower = lower[1],
        strict = strict[1]
      )
    )

  }

}