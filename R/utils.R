fix_reference <- function(ref_path = "docs/reference") {
  rds <- list.files(ref_path, pattern = "rd")
  new_html <- paste0(substr(rds, 1, nchar(rds) - 2), "html")
  rds <- paste0(ref_path, "/", rds)
  new_html <- paste0(ref_path, "/", new_html)
  file.rename(rds, new_html)
  index <- readLines(file.path(ref_path, "/index.html"))
  index <- gsub(".rd", ".html", index)
  writeLines(index, file.path(ref_path ,"index.html"))
}

data_script <- function(script_path) {
  pkg_path <- system.file("specs", package = "datos")
  specs <- list.files(pkg_path)
  asp <- lapply(file.path(pkg_path, specs), yaml::read_yaml)
  anm <- as.character(lapply(asp, function(x) x$df$name))
  code <-  lapply(
    seq_along(anm),
    function(x)
      paste0("delayedAssign('", anm[x],"', datos:::translate('", specs[x], "'))")
  )
  code <- as.character(code)
  if(file.exists(script_path)) unlink(script_path, force = TRUE)
  writeLines(code, script_path)
}
