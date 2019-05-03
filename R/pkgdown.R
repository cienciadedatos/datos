fix_reference <- function() {
  rds <- list.files("docs/reference", pattern = "rd")
  new_html <- paste0(substr(rds, 1, nchar(rds) - 2), "html")
  rds <- paste0("docs/reference/", rds)
  new_html <- paste0("docs/reference/", new_html)
  file.rename(rds, new_html)
  index <- readLines("docs/reference/index.html")
  index <- gsub(".rd", ".html", index)
  writeLines(index, "docs/reference/index.html")
}
