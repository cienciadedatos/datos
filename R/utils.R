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

data_script <- function(script_path = "data/data.R",
                        script_target = "inst/scripts",
                        spec_path = "inst/specs",
                        is_test = FALSE) {
  specs <- list.files(spec_path)
  asp <- lapply(file.path(spec_path, specs), yaml::read_yaml)
  anm <- as.character(lapply(asp, function(x) x$df$name))
  code <- lapply(
    seq_along(anm),
    function(x)
      paste0(
        "delayedAssign('", anm[x], "',
        eval(parse(file.path(system.file('scripts','",
        anm[x], ".txt', package = 'datos')))))"
        ))
  code <- as.character(code)
  if (file.exists(script_path)) unlink(script_path, force = TRUE)
  writeLines(code, script_path)
  unlink(script_target, recursive = TRUE)
  dir.create(script_target)
  script <- ""
  script <- if(! is_test)readLines("R/translate.R")
  lapply(
    seq_along(anm),
    function(x)
      writeLines(
        c(script, paste0("translate('", specs[x], "')"), ""),
        con = file.path(script_target, paste0(anm[x], ".txt"))
      ))
}
