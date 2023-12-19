test_that("cor_plot() works", {
  data(adsl)
  vdiffr::expect_doppelganger("cor_plot",
                              adsl %>% cor_plot())
})
