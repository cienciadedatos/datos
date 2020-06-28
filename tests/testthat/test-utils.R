context("utils")

test_that("Site fix works", {
  expect_silent(fix_reference(tempdir(), TRUE))
})
