context("translation")

get_all_specs <- function(base_path = "specs", package = "datos") {
  pkg_path <- system.file(package = package)
  specs <- list.files(file.path(pkg_path, base_path))
  spec_paths <- file.path(file.path(pkg_path, base_path, specs))
  lapply(spec_paths, yaml::read_yaml)
}

all_specs <- get_all_specs()

lapply(all_specs,
       function(x){
         test_that(paste0("Load from spec works for:", x$df$name), {
           df <- eval(rlang::parse_expr(x$df$name))
           orig <- eval(rlang::parse_expr(x$df$source))
           expect_is(df, "data.frame")
           expect_equal(names(df), as.character(lapply(x$variables, function(x) x$trans)))
           expect_equal(nrow(orig), nrow(df))
           expect_equal(ncol(orig), ncol(df))
           expect_equal(class(orig), class(df))
           })
         })
