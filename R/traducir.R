#' @export
pkg_folder <- function(subfolder) {
  system.file(subfolder, package = "datos")
}

#' @export
pkg_spec <- function(file) {
  pkg_folder(file.path("specs", file))
}

#' @import rlang
#' @export
grabar_traduccion <- function(df, spec, nombre) {
  nombre <- enexpr(nombre)
  nombre_char <- as.character(nombre)
  e <- global_env()
  e[[nombre_char]] <- translate_data(df, spec)
  save(list = nombre_char, file = paste0("data/", nombre_char, ".rda"))
  rm(list = nombre_char, envir = e)
}

#' @import rlang
#' @export
traducir <- function() {

}

#' @export
traducir <- function() {
  d <- list(
    diamantes = list(
      df = ggplot2::diamonds,
      spec = pkg_spec("diamonds.yml"),
      nombre = expr(diamantes)
    ),
    millas = list(
      df = ggplot2::mpg,
      spec = pkg_spec("mpg.yml"),
      nombre = expr(millas)
    ),
    paises = list(
      df = gapminder::gapminder,
      spec = pkg_spec("gapminder.yml"),
      nombre = expr(paises)
    )
  )
  purrr::walk(d, ~grabar_traduccion(.x$df, .x$spec, !!.x$nombre))
}
