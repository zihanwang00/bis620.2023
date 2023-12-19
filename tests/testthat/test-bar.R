test_that("bar_plot() works", {
  data(adsl)
  vdiffr::expect_doppelganger(
    "bar_plot",
    bar_plot(adsl, "ATRT", "DTH")
  )
})
