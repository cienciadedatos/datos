context("utils")

test_that("Site fix works", {
  expect_silent(fix_reference(tempdir(), TRUE))
})

test_that("use_delayed_translate outputs the expected code", {
  verify_output(
    test_path("output-use_delayed_translate.txt"),
    use_delayed_translate()
  )
})
