context("RD files")

pkg_path <- system.file(package = "datos")

test_that("Help generator works", {
  expect_silent(
    datos:::folder_rd(
      file.path(pkg_path, "specs"),
      tempdir()
    )
  )
})
