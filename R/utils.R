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

use_delayed_translate <- function() {
  path <-system.file(
      package = "datos", "specs", lib.loc = .libPaths(), mustWork = TRUE
  )
  spec_files <- list.files(path)
  spec_paths <- list.files(path, full.names = TRUE)
  asp <- lapply(spec_paths, yaml::read_yaml)
  anm <- as.character(lapply(asp, function(x) x$df$name))
  code <- lapply(
    seq_along(anm),
    function(x) {
      sprintf('delayedAssign("%s", translate("%s"))', anm[x], spec_files[x])
    }
  )

  cat(as.character(code), sep = "\n")
}

#' Avoid R CMD check warning
#' @keywords internal
"translate"
