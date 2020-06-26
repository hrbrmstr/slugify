.pkgenv <- new.env(parent=emptyenv())

.onLoad <- function(...) {

  ctx <- V8::v8()
  ctx$source(system.file("js/bundle.js", package="slugify"))

  assign("ctx", ctx, envir=.pkgenv)

  cache <- list()

}