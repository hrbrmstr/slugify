#' Slugif a string
#'
#' @param x string
#' @param replacement replace spaces with replacement character, defaults to `-`
#' @param remove remove characters that match this regex, defaults to `NULL` (no deleting)
#' @param lower convert to lower case, defaults to `TRUE`
#' @param strict strip special characters except replacement, defaults to `TRUE`
#' @export
#' @examples
#' slugify("R is great!")
slugify <- function(x, replacement = "-", remove = NULL, lower = TRUE, strict = TRUE) {

  if (!is.null(remove)) {

    .pkgenv$ctx$call(
      "slugify", x[1],
      list(
        replacement = "-",
        remove = remove[1],
        lower = lower[1],
        strict = strict[1]
      )
    )

  } else {

    .pkgenv$ctx$call(
      "slugify", x[1],
      list(
        replacement = "-",
        lower = lower[1],
        strict = strict[1]
      )
    )

  }

}