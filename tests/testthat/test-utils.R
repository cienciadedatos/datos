context("utils")

test_that("Data script", {
  temp <- tempfile()
  expect_silent(data_script(temp))
  expect_silent(data_script(temp))
})
