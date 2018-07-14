
translate_column <- function(column, from, to) {
  cl <- column[[1]]
  if ("factor" %in% class(cl)) {
    lv <- levels(cl)
    lv[lv == from] <- to
    levels(cl) <- lv
  }
  cl[cl == from] <- to
  data.frame(cl)
}

#' @export
#' @importFrom magrittr %>%
translate_data <- function(df = NULL, spec = NULL) {
  if (is.null(df)) stop("Please provide a data.frame")
  if (is.null(spec)) stop("Please provide the path of a spec")

  spec <- yaml::read_yaml(spec)

  purrr::imap(spec$variables, ~{
    col <- df[, .y]
    if (!is.null(.x$values)) {
      for (i in 1:length(.x$values)) {
        val <- names(.x$values[i])
        col <- translate_column(col, val, .x$values[[i]])
      }
    }
    names(col) <- .x["trans"]
    col
  }) %>%
    dplyr::bind_cols()
}
