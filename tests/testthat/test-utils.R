context("utils")

test_that("Site fix works", {
  expect_silent(fix_reference(tempdir(), TRUE))
})

test_that("Script generator works", {
  temp_file <- tempfile()
  data_script(
    script_path = temp_file,
    spec_path = system.file("specs", package = "datos")
  )

  expect_true(file.exists(temp_file))
  file_contents <- paste0(readLines(temp_file), collapse = "\n")
  expect_true(grepl("delayedAssign\\(", file_contents))
})
