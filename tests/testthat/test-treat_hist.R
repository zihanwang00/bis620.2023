test_that("treat_hist() works", {
  data(adsl)
  vdiffr::expect_doppelganger(
    "treat_hist",
    treat_hist(adsl, "DTH", "ATRT")
    )

})
