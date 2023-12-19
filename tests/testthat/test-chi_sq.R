test_that("chi_sq() works", {
  data(adsl)
  expect_snapshot(chi_sq(adsl$DTH, adsl$AGE))
})
