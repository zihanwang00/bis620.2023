test_that("spec_sig() works", {
  data(accel)
  expect_snapshot(accel |> head() |> spec_sig())
})
