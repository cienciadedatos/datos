fix_reference <- function(ref_path = "docs/reference/", is_test = FALSE) {
  if(is_test) {
    writeLines("test", file.path(ref_path, "index.html"))
    writeLines("reference", file.path(ref_path, "ref.rd"))
  }
  rds <- list.files(ref_path, pattern = "rd")
  new_html <- paste0(substr(rds, 1, nchar(rds) - 2), "html")
  rds <- paste0(ref_path, "/", rds)
  new_html <- paste0(ref_path, "/", new_html)
  file.rename(rds, new_html)
  index_file <- file.path(ref_path, "index.html")
  index <- readLines(index_file)
  index <- gsub("\\.rd", ".html", index)
  writeLines(index, index_file)
}

#' Avoid R CMD check warning
#' @keywords internal
"translate"
