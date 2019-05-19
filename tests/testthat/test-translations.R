context("translation")

get_all_specs <- function(base_path = "specs", package = "datos") {
  pkg_path <- system.file(package = package)
  specs <- list.files(file.path(pkg_path, base_path))
  spec_paths <- file.path(file.path(pkg_path, base_path, specs))
  ry <- lapply(spec_paths, yaml::read_yaml)
  lapply(
    seq_along(ry),
    function(x)
      list(
        file = specs[[x]],
        original = ry[[x]]$df$source,
        df = ry[[x]]$df$name,
        variables = ry[[x]]$variables,
        trans = ry[[x]]$trans
      )
  )
}

lapply(
  get_all_specs(),
  function(x) {
    test_that(paste0("Load from spec works for:", x$df), {
      df <- translate(x$file)
      orig <- eval(parse(text = x$original))
      expect_is(df, "data.frame")
      expect_equal(names(df), as.character(lapply(x$variables, function(x) x$trans)))
      expect_equal(nrow(orig), nrow(df))
      expect_equal(ncol(orig), ncol(df))
      expect_equal(class(orig), class(df))
    })
  }
)
