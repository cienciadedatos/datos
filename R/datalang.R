translate_data <- function(spec_path, .data = NULL) {
  #is.readable(spec_path)

  spec <- read_yaml(spec_path)

  if (is.null(.data)) {
    df <- parse_expr(spec$df$source)
    df <- eval(df)
    if("function" %in% class(df)) return()
  } else {
    df <- .data
  }

  if(tibble::is_tibble(df)){
    was_tibble <- TRUE
  } else {
    was_tibble <- FALSE
    df <-as_tibble(df)
  }

  vars <- spec$variables
  var_names <- names(vars)
  vars_TRUE <- var_names == "TRUE"
  if(sum(vars_TRUE) > 0){
    if(vars[vars_TRUE][[1]]$trans == "TRUE"){
      vars[vars_TRUE][[1]]$trans <- "y"
    }
    var_names[vars_TRUE]  <- "y"
  }

  new_names <- as.character(lapply(vars, function(x)x$trans))

  dfl <- lapply(
    seq_along(vars),
    function(x) {
      cl <- df[, var_names[x]][[1]]
      from <- names(vars[[x]]$values)
      if (!is.null(from)) {
        to <- as.character(vars[[x]]$values[from])
        if ("factor" %in% class(cl)) {
          lv <- levels(cl)
          for (i in seq_along(from)) {
            lv[lv == from[i]] <- to[i]
          }
          levels(cl) <- lv
        } else {
          for (i in seq_along(from)) {
            cl[cl == from[i]] <- to[i]
          }
        }
      }

      cl <- as.data.frame(cl)
      colnames(cl) <- new_names[x]
      cl
    }
  )
  dfl <- as.data.frame(dfl)
  if (was_tibble) dfl <- as_tibble(dfl)
  dfl
}

create_promise <- function(path, package = "datos") {
  spec_loc <- system.file(path, package = package)
  spec <- read_yaml(spec_loc)
  new_name <- spec$df$name
  origin <- spec$df$source

  envir <- as.environment(paste0("package:", package))

  rlang::env_bind_lazy(
    envir,
    !! new_name := translate_data(
      spec_loc,
      eval(parse_expr(origin))
    ))
}

promise_datasets <- function(base_path = "specs", package = "datos") {
  specs <- list.files(file.path(system.file(package = "datos"), "specs"))
  lapply(paste0("specs/", specs), create_promise)
}
