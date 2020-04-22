test_that("hasn't changed", {
  expect_known_output(
    frutas, "ref-frutas.txt",
    print = TRUE,
    update = FALSE
  )
})
