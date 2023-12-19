test_that("lm_model() works", {
  data(adsl)
  expect_snapshot(lm_model(adsl, DTH ~ -1 + ATRT + AGE + SEX))
})
