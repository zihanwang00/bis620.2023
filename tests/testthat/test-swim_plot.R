test_that("swim_plot() works", {
  data(adsl)
  vdiffr::expect_doppelganger(
    "swim_plot",
    swim_plot(adsl)
  )
})
