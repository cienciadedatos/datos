context("utils")

test_that("Site fix works", {
  expect_silent(fix_reference(tempdir(), TRUE))
})

test_that("Script generator works", {
  expect_silent(data_script(tempfile(), tempdir(), TRUE))
})
