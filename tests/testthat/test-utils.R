context("utils")

test_that("Site fix works", {
  expect_silent(fix_reference(tempdir(), TRUE))
})

test_that("Script generator works", {
  expect_is(
    data_script(
      script_path = tempfile(),
      script_target = tempdir(),
      spec_path = system.file("specs", package = "datos"),
      is_test = TRUE
    ),
    "list"
  )
})
