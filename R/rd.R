create_rd <- function(spec_path) {
  spec <- yaml::read_yaml(spec_path)
  header <- list("\\docType{data}")
  if (!is.null(spec$help$name)) header <- c(header, paste0("\\name{", spec$help$name, "}"))
  if (!is.null(spec$help$alias)) header <- c(header, paste0("\\alias{", spec$help$alias, "}"))
  if (!is.null(spec$help$title)) header <- c(header, paste0("\\title{", spec$help$title, "}"))
  if (!is.null(spec$help$format)) header <- c(header, paste0("\\format{", spec$help$format, ""))
  header <- c(header, "\\describe{")

  items <- NULL
  items <- lapply(
    spec$variables, function(x) {
      variable <- x["trans"]
      if (variable == "TRUE") variable <- "y"
      paste0("\\item{", variable, "}{", x["desc"], "}")
    }
  )
  items <- as.character(items)
  names(items) <- NULL

  footer <- list("}}")
  if (!is.null(spec$help$usage)) {
    footer <- c(footer, paste0("\\usage{", spec$help$usage, "}"))
  }
  if (!is.null(spec$help$description)) {
    footer <- c(footer, paste0("\\description{", spec$help$description, "}"))
  }
  if (!is.null(spec$help$source)) {
    footer <- c(footer, paste0("\\source{", spec$help$source, "}"))
  }
  footer <- c(footer, "\\keyword{datasets}")
  rd <- c(header, items, footer)
  as.character(rd)
}

save_rd <- function(spec_path = NULL, rd_folder = "man") {
  spec <- read_yaml(spec_path)
  rd_name <- spec$df$name
  rd <- create_rd(spec_path)
  writeLines(
    rd,
    con = file.path(rd_folder, paste0(rd_name, ".rd")),
    useBytes = TRUE
  )
}

folder_rd <- function(spec_folder = "inst/specs", rd_folder = "man") {
  specs <- list.files(spec_folder)
  invisible({
    lapply(file.path(spec_folder, specs), function(x) {
      save_rd(x, rd_folder = rd_folder)
    })
  })
}
